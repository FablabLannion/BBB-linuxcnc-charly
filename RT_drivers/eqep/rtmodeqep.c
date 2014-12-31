#include <linux/version.h>
#include <linux/module.h>
//#include <pwm/pwm.h>
#include <linux/kernel.h>
#include <linux/string.h>
#include <rtdm/rttesting.h>
#include <rtdm/rtdm_driver.h>
#include <linux/ioctl.h>
#include <linux/io.h>
#include <linux/ioport.h>


#define MAX_DEVICES         3
#define SIZE_BUFF            4
#define SOME_SUB_CLASS          4711

//#define DEBUG

//#define DEBUG_PRINT(fmt, args...)    rtdm_printk(fmt, ## args)
#define DEBUG_PRINT(fmt, args...)  
static unsigned long count=0;
//RealTime RTM driver
 static unsigned long        ioaddr[MAX_DEVICES]={0x48300180,0x48302180,0x48304180};
 static void* iomembase[MAX_DEVICES];
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
 rtdm_sem_t sem;
 
 /**
  * Open the device
  *
  * This function is called when the device shall be opened.
 *
  */
 static int eqep_rtdm_open(struct rtdm_dev_context *context,
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
 static int eqep_rtdm_close(struct rtdm_dev_context *context,
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
 static ssize_t eqep_rtdm_read_rt(struct rtdm_dev_context *context,
                     rtdm_user_info_t * user_info, void *buf,
                     size_t nbyte)
 {
     //int ret, addr,directret;
     int ret, addr;
//rtdm_printk(KERN_DEBUG "RTDM read count : %i .\n",count);
 //   count++;
     /* take the semaphore */
     rtdm_sem_down(&sem);

    /* read the io reg and sent it to user space */
	
	addr=context->device->device_id;
	DEBUG_PRINT(KERN_DEBUG "RTDM read  addr : %x \n",ioaddr[addr]);
	DEBUG_PRINT(KERN_DEBUG "RTDM read ioremap addr : %x \n",iomembase[addr]);
	
   // size = (buffer.size > nbyte) ? nbyte : buffer.size;
 //   ret = rtdm_safe_copy_to_user(user_info, buf, ioaddr[addr], 4);
 //DEBUG_PRINT(KERN_DEBUG "RTDM read ioaddr eqep %i, val %x \n",ret,(int)buf);
 //directret=ioread32(ioaddr[addr]);
 //DEBUG_PRINT(KERN_DEBUG "RTDM read ioaddr direct eqep val %x \n",directret);
 ret = rtdm_safe_copy_to_user(user_info, buf, iomembase[addr], 4);
 //DEBUG_PRINT(KERN_DEBUG "RTDM read iomemebase eqep : ret %i, val %x \n",ret,(int)buf);
 DEBUG_PRINT(KERN_DEBUG "RTDM read iomemebase eqep : ret %i, val %s \n",ret,buf);
 //ret = rtdm_safe_copy_to_user(user_info, buf, &iomembase[addr], 4);
 //DEBUG_PRINT(KERN_DEBUG "RTDM read &iomemebase eqep : ret %i, val %x \n",ret,(int)buf);
 //DEBUG_PRINT(KERN_DEBUG "RTDM read &iomemebase eqep : ret %i, val %s \n",ret,buf);
 //directret=ioread32(iomembase[addr]);
 //DEBUG_PRINT(KERN_DEBUG "RTDM read iomemebase direct eqep val %x \n",directret);


 
     /* clean the kernel buffer */
    //buffer.size = 0;
/* release the semaphore */
     rtdm_sem_up(&sem);
    /* if an error has occured, send it to user */
     if (ret)
        return ret;
	 
    return 1;
 }
 
 /**
  * Write in the device
  *
  * This function is called when the device is written in realtime context.
  *
  */
static ssize_t eqep_rtdm_write_rt(struct rtdm_dev_context *context,
                      rtdm_user_info_t * user_info,
                      const void *buf, size_t nbyte)
 {
     int ret;
 
     /* write the user buffer in the kernel buffer */
     buffer.size = (nbyte > SIZE_MAX) ? SIZE_MAX : nbyte;
     ret = rtdm_safe_copy_from_user(user_info, buffer.data, buf, buffer.size);
 
     /* if an error has occured, send it to user */
     if (ret)
         return ret;
 
     /* release the semaphore */
     rtdm_sem_up(&sem);
 
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
 
    .open_nrt = eqep_rtdm_open,
    .open_rt  = eqep_rtdm_open,
 
     .ops = {
         .close_nrt = eqep_rtdm_close,
         .close_rt  = eqep_rtdm_close,
         .read_rt   = eqep_rtdm_read_rt,
         .write_rt  = eqep_rtdm_write_rt,
    },
 
     .device_class = RTDM_CLASS_EXPERIMENTAL,
     .device_sub_class = SOME_SUB_CLASS,
     .profile_version = 1,
     .driver_name = "SimpleEQEPRTDM",
     .driver_version = RTDM_DRIVER_VER(0, 1, 2),
     .peripheral_name = "Simple RTDM eqep read",
     .provider_name = "theo",
     .proc_name = devicertdm.device_name,
 };

  /**
  * This function is called when the module is unloaded
  *
  * It unregister the RTDM device, polling at 1000 ms for pending users.
  *
  */
 void eqep_rtdm_exit(void)
 {
     int i;
 rtdm_sem_destroy(&sem);
 
     for (i = 0; i < MAX_DEVICES; i++)
         if (device[i]) {
             rtdm_dev_unregister(device[i], 1000);
             release_region(ioaddr[i], 4);
             kfree(device[i]);
         }

	 
 }
 
 /**
  * This function is called when the module is loaded
  *
  * It simply registers the RTDM device.
  *
  */
 
 int eqep_rtdm_init(void)
 {
     
     int i,ret;
     //void __iomem           *mmio_base;
     struct rtdm_device *eqepdevice;
     DEBUG_PRINT(KERN_DEBUG "rtmodeqep init start\n");
	 buffer.size = 0;        /* clear the buffer */
	 DEBUG_PRINT(KERN_DEBUG "RTDM sem init start\n");
     rtdm_sem_init(&sem, 1);     /* init the global semaphore */
     DEBUG_PRINT(KERN_DEBUG "RTDM sem init stop\n");
	 for (i = 0; i < MAX_DEVICES; i++) {
	 DEBUG_PRINT(KERN_DEBUG "RTDM malloc eqep %d  \n ",i);
     eqepdevice=kmalloc(sizeof(struct rtdm_device), GFP_KERNEL);
	 if (!eqepdevice){
		 DEBUG_PRINT(KERN_DEBUG "ECHEC RTDM malloc eqep %d \n",i);
	 eqep_rtdm_exit();
	 }
	 memcpy(eqepdevice, &devicertdm, sizeof(struct rtdm_device));
	 snprintf(eqepdevice->device_name, RTDM_MAX_DEVNAME_LEN, "rteqep%d",i);  
	 eqepdevice->device_id = i; 
     eqepdevice->proc_name = eqepdevice->device_name;
     DEBUG_PRINT(KERN_DEBUG "RTDM req ioremap eqep %c \n",eqepdevice->device_name);
    iomembase[i]= __arm_ioremap(ioaddr[i], 4, 0);
    DEBUG_PRINT(KERN_DEBUG "RTDM iomembase eqep %d",iomembase[i]);
   if (! iomembase[i]){DEBUG_PRINT(KERN_DEBUG "failed RTDM req opremap  eqep %d \n",i);
		kfree(eqepdevice);
	 return -1;}
	 
    /* DEBUG_PRINT(KERN_DEBUG "RTDM req region ioaddreqep %d \n",i);
	 if (!request_region(ioaddr[i], 4, eqepdevice->device_name)){
		 DEBUG_PRINT(KERN_DEBUG "ECHEC RTDM req region eqep %d  \n",i);
	 kfree(eqepdevice);
	 return -1;
	 };*/
	 
	 DEBUG_PRINT(KERN_DEBUG "RTDM register eqep %d",i);
     ret=rtdm_dev_register(eqepdevice);
	 if (ret < 0) {
		 DEBUG_PRINT(KERN_DEBUG "ECHEC RTDM register eqep %d",i);
	 release_region(ioaddr[i], 4);
	 return -1;
	 }
	 device[i] = eqepdevice;
	 }
	 return 0;
 }
 

 
 
module_init(eqep_rtdm_init);
module_exit(eqep_rtdm_exit);
 
MODULE_LICENSE("GPL");
MODULE_AUTHOR("theo-FabLabLannion");
