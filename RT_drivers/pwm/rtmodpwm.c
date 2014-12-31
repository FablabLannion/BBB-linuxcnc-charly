/*
 * fo*nctionnement du pwm sur TI :
 * TBPRD defini l'echantillonage d'une demie periode si = 2 >> pwm = 0%, 50% ou 100%
 * CMPA et CMPB permette de definir la periode libre de pwmA et pwmB 
 * si CMPA=TBPRD >> pwm=0; CMPA=0 >> PWM=100%
 */


#include <linux/version.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/string.h>
#include <rtdm/rttesting.h>
#include <rtdm/rtdm_driver.h>
#include <linux/ioctl.h>
#include <linux/io.h>
#include <linux/ioport.h>


#define MAX_DEVICES         6
#define SIZE_BUFF            2
#define SOME_SUB_CLASS          4711


//#define DEBUG_PRINT(fmt, args...)    rtdm_printk(fmt, ## args)
#define DEBUG_PRINT(fmt, args...)    

//RealTime RTM driver
 static unsigned long        TBPRDaddr[MAX_DEVICES]={0x4830020A,0x48300212,0x4830220A,0x48302212,0x4830420A,0x48304212}; //2 bytes
 static unsigned long        CMPaddr[MAX_DEVICES]={0x48300212,0x48300214,0x48302212,0x48302214,0x48304212,0x48304214}; // 2 bytes
 static void* TBPRDmembase[MAX_DEVICES];
 static void* CMPmembase[MAX_DEVICES];
 static unsigned long count=0;
 static struct rtdm_device   *device[MAX_DEVICES];
 /**
  * The structure of the buffer
  *
  */
 typedef struct buffer_s {
     int size;
     char data[SIZE_BUFF];
 } buffer_t;
 
 /**
  * The global buffer
  *
  */
 buffer_t buffer;
 
 /**
  * The global semaphore
  *
  */
 rtdm_sem_t sempwm;
 
 /**
  * Open the device
  *
  * This function is called when the device shall be opened.
 *
  */
 static int pwm_rtdm_open(struct rtdm_dev_context *context,
                 rtdm_user_info_t * user_info, int oflags)
 {
     return 0;
 }
 
 /**
  * Close the device
  *
  * This function is called when the device shall be closed.
  *
  */
 static int pwm_rtdm_close(struct rtdm_dev_context *context,
                 rtdm_user_info_t * user_info)
 {
     return 0;
 }
 
 /**
  * Read from the device
  *
  * This function is called when the device is read in realtime context.
  *
  */
 static ssize_t pwm_rtdm_read_rt(struct rtdm_dev_context *context,
                     rtdm_user_info_t * user_info, void *buf,
                     size_t nbyte)
 {
     //int ret, addr,directret;
     int ret, addr;

    DEBUG_PRINT(KERN_DEBUG "RTDM read count : %i .\n",count);
 //   count++;
//DEBUG_PRINT(KERN_DEBUG "RTDM read TBRD @ ioremap addr : %x .\n",TBPRDmembase[addr]);
   
	
	addr=context->device->device_id;
	
	DEBUG_PRINT(KERN_DEBUG "RTDM read TBRD @ ioremap addr : %x .\n",TBPRDmembase[addr]);
 /* take the semaphore */
    rtdm_sem_down(&sempwm);	
   /* read the io reg and sent it to user space */
 ret = rtdm_safe_copy_to_user(user_info, buf, TBPRDmembase[addr], 2);

/* release the semaphore */
     rtdm_sem_up(&sempwm);
    /* if an error has occured, send it to user */
     if (ret)
        return ret; 
  DEBUG_PRINT(KERN_DEBUG "RTDM read TBPRDmemebase pwm : ret %i, val %s \n",ret,buf);
    return 1;
 }
 
 /**
  * Write in the device
  *
  * This function is called when the device is written in realtime context.
  *
  */
static ssize_t pwm_rtdm_write_rt(struct rtdm_dev_context *context,
                      rtdm_user_info_t * user_info,
                      const void *buf, size_t nbyte)
 {
     int ret, addr;
 /* take the semaphore */
     rtdm_sem_down(&sempwm);
    //recuperation de l'id = index pour les @ 
	addr=context->device->device_id;
	DEBUG_PRINT(KERN_DEBUG "RTDM addr to write : %x \n",CMPmembase[addr]);
	
	
     /* write the user buffer in the kernel buffer */
     ret = rtdm_safe_copy_from_user(user_info, CMPmembase[addr], buf, 2);
 
    
     /* release the semaphore */
     rtdm_sem_up(&sempwm);
  /* if an error has occured, send it to user */
     if (ret) return ret;
 DEBUG_PRINT(KERN_DEBUG "RTDM write CMPmemebase pwm : ret %i, val %s \n",ret,buf);
     return nbyte;
 }
 
 /**
  * This structure describe the simple RTDM device
  *
  */
 static struct rtdm_device devicertdm = {
     .struct_version = RTDM_DEVICE_STRUCT_VER,
 
    .device_flags = RTDM_NAMED_DEVICE,
   // .context_size = sizeof(struct eqep_chip),
    .context_size = 0,
    .device_name = "",
 
    .open_nrt = pwm_rtdm_open,
   // .open_rt  = pwm_rtdm_open,
 
     .ops = {
         .close_nrt = pwm_rtdm_close,
   //      .close_rt  = pwm_rtdm_close,
         .read_rt   = pwm_rtdm_read_rt,
         .write_rt  = pwm_rtdm_write_rt,
    },
 
     .device_class = RTDM_CLASS_EXPERIMENTAL,
     .device_sub_class = SOME_SUB_CLASS,
     .profile_version = 1,
     .driver_name = "SimplePWMRTDM",
     .driver_version = RTDM_DRIVER_VER(0, 1, 2),
     .peripheral_name = "Simple RTDM pwm write",
     .provider_name = "theo",
     .proc_name = devicertdm.device_name,
 };

  /**
  * This function is called when the module is unloaded
  *
  * It unregister the RTDM device, polling at 1000 ms for pending users.
  *
  */
 void pwm_rtdm_exit(void)
 {
     int i;
 
 rtdm_sem_destroy(&sempwm);
     for (i = 0; i < MAX_DEVICES; i++)
         if (device[i]) {
             rtdm_dev_unregister(device[i], 1000);
            // release_region(TBPRDaddr[i], 2);
            // release_region(CMPaddr[i], 2);
             kfree(device[i]);
         }

	 
 }
 
 /**
  * This function is called when the module is loaded
  *
  * It simply registers the RTDM device.
  *
  */
 
 int pwm_rtdm_init(void)
 {
     
     int i,ret;
     //void __iomem           *mmio_base;
     struct rtdm_device *pwmdevice;
     DEBUG_PRINT(KERN_DEBUG "rtmodpwm init start\n");
	 buffer.size = 0;        /* clear the buffer */
	 DEBUG_PRINT(KERN_DEBUG "RTDM sempwm init start\n");
     rtdm_sem_init(&sempwm, 1);     /* init the global semaphore */
     DEBUG_PRINT(KERN_DEBUG "RTDM sempwm init stop\n");
	 for (i = 0; i < MAX_DEVICES; i++) {
	 DEBUG_PRINT(KERN_DEBUG "RTDM malloc pwm %d  \n ",i);
     pwmdevice=kmalloc(sizeof(struct rtdm_device), GFP_KERNEL);
	 if (!pwmdevice){
		 DEBUG_PRINT(KERN_DEBUG "ECHEC RTDM malloc pwm %d \n",i);
	 pwm_rtdm_exit();
	 }
	 memcpy(pwmdevice, &devicertdm, sizeof(struct rtdm_device));
	 snprintf(pwmdevice->device_name, RTDM_MAX_DEVNAME_LEN, "rtpwm%i",i);  
	 pwmdevice->device_id = i; 
     pwmdevice->proc_name = pwmdevice->device_name;
     DEBUG_PRINT(KERN_DEBUG "RTDM req TBPRD ioremap pwm %c \n",pwmdevice->device_name);
    TBPRDmembase[i]= __arm_ioremap(TBPRDaddr[i], 2, 0);
    DEBUG_PRINT(KERN_DEBUG "RTDM TBPRD pwm %x",TBPRDmembase[i]);
   if (! TBPRDmembase[i]){DEBUG_PRINT(KERN_DEBUG "failed RTDM req opremap  pwm tbprd %x \n",i);
		kfree(pwmdevice);
	 return -1;}
	 DEBUG_PRINT(KERN_DEBUG "RTDM req CMP ioremap pwm %c \n",pwmdevice->device_name);
    CMPmembase[i]= __arm_ioremap(CMPaddr[i], 2, 2);
    DEBUG_PRINT(KERN_DEBUG "RTDM CMP pwm %x",CMPmembase[i]);
   if (! CMPmembase[i]){DEBUG_PRINT(KERN_DEBUG "failed RTDM req opremap  pwm CMP %x \n",i);
		kfree(pwmdevice);
	 return -1;}
/*	 DEBUG_PRINT(KERN_DEBUG "RTDM req CMPB ioremap pwm %c \n",pwmdevice->device_name);
    CMPBmembase[i]= __arm_ioremap(CMPBaddr[i], 2, 0);
    DEBUG_PRINT(KERN_DEBUG "RTDM CMPB pwm %d",CMPBmembase[i]);
   if (! CMPBmembase[i]){DEBUG_PRINT(KERN_DEBUG "failed RTDM req opremap  pwm CMPB %d \n",i);
		kfree(eqepdevice);
	 return -1;}
*/	 
    /* DEBUG_PRINT(KERN_DEBUG "RTDM req region ioaddreqep %d \n",i);
	 if (!request_region(ioaddr[i], 4, eqepdevice->device_name)){
		 DEBUG_PRINT(KERN_DEBUG "ECHEC RTDM req region eqep %d  \n",i);
	 kfree(eqepdevice);
	 return -1;
	 };*/
	 
	 DEBUG_PRINT(KERN_DEBUG "RTDM register pwm %i",i);
     ret=rtdm_dev_register(pwmdevice);
	 if (ret < 0) {
		 DEBUG_PRINT(KERN_DEBUG "ECHEC RTDM register pwm %i",i);
	 //release_region(ioaddr[i], 4);
	 return -1;
	 }
	 device[i] = pwmdevice;
	 }
	 return 0;
 }
 

 
 
module_init(pwm_rtdm_init);
module_exit(pwm_rtdm_exit);
 
MODULE_LICENSE("GPL");
MODULE_AUTHOR("theo-FabLabLannion");
