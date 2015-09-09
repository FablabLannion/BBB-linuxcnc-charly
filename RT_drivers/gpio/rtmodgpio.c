/*
 * fonctionnement des gpio sur TI : 4 bank de 32 GPIO
 * gpio1_17 bank 1 @ 17 ; gpio2_14 bank 2 @14 et gpio2_9 bank 2 @9
 * @bank 1 : 0x4804C000 ; @Bank2 : 0x481AC000 
 * 2 registres speciaux pour output : clear (met à 0) offset 0x190 et set (met à 1) offset 0x194 on ecrit dedans l'@ de la pin
 *1 registre pour lectures des pins offset 0x138 : lectures des 32 pins à chaque fois
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


#define MAX_DEVICES         7// a modifier en fonction des besoins
#define SIZE_BUFF            4
#define SOME_SUB_CLASS          4711



//#define DEBUG_PRINT(fmt, args...)    rtdm_printk(fmt, ## args)
#define DEBUG_PRINT(fmt, args...)    

//RealTime RTM driver
 static unsigned long        GPIOCLRaddr[4]={0x44E07190,0x4804C190,0x481AC190,0x481AE190}; //BANK 0 1 2 3
  static unsigned long        GPIOSETaddr[4]={0x44E07194,0x4804C194,0x481AC194,0x481AE194};
 static unsigned long        GPIOINaddr[4]={0x44E07138,0x4804C138,0x481AC138,0x481AE138};
  static unsigned long        GPIObankaddrtab[MAX_DEVICES]={1,2,2,0,2,0,2};// out en premier, in ensuite 1-17(P9-23), 2-22(P8-27),2-24(P8-28),0-15(P9-24), 2-25(P8-30), 0-14(P9-26), 2-23(P8-29)
 // static unsigned long        GPIOnumtab[MAX_DEVICES]={17,15,89,14};// 1-17(P9-23), 0-15(P9-24),2-25(P8-30), 0-14(P9-26)
 static unsigned long        GPIOaddr[MAX_DEVICES]={0x00020000,0x00400000,0x01000000,0x00008000,0x02000000,0x00008000,0x00800000};// bit 17 à 1, bit 22 , bit 24 bit 15 à 1, bit 25 à 1, bit 14 à 1, bit 23
 static void* GPIOCLRmemaddr[MAX_DEVICES];
 static void* GPIOSETmemaddr[MAX_DEVICES];
 static void* GPIOINmemaddr[MAX_DEVICES];
 
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
 rtdm_sem_t semgpio;
 
 /**
  * Open the device
  *
  * This function is called when the device shall be opened.
 *
  */
 static int gpio_rtdm_open(struct rtdm_dev_context *context,
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
 static int gpio_rtdm_close(struct rtdm_dev_context *context,
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
 static ssize_t gpio_rtdm_read_rt(struct rtdm_dev_context *context,
                     rtdm_user_info_t * user_info, void *buf,
                     size_t nbyte)
 {
     //int ret, addr,directret;
     //int ret, addr,GpioVals,ValGpio;
	int ret, addr;
	addr=context->device->device_id;
	
	DEBUG_PRINT(KERN_DEBUG "RTDM read GPIOINmemaddr @ ioremap addr : %x .\n",GPIOINmemaddr[addr]);
 /* take the semaphore */
    rtdm_sem_down(&semgpio);	
   /* read the io reg and sent it to user space */
 //ret = rtdm_safe_copy_to_user(user_info, buf, GPIOINmemaddr[addr], 4);
//GpioVals=ioread32(GPIOINmemaddr[addr]);
//DEBUG_PRINT(KERN_DEBUG "GPIO values read : %x \n",GpioVals);
//ValGpio=(GpioVals >>  GPIOnumtab[addr]) & 1 ; //decalage de nit pour avoir le bit qui nous interresse en premiere position, puis ET logique pour extraire la valeur
//DEBUG_PRINT(KERN_DEBUG "GPIO %i value read : %x \n",addr,ValGpio);
//ret = rtdm_safe_copy_to_user(user_info, buf, &ValGpio, 4);

ret = rtdm_safe_copy_to_user(user_info, buf, GPIOINmemaddr[addr], 4);
/* release the semaphore */
     rtdm_sem_up(&semgpio);
    /* if an error has occured, send it to user */
     if (ret)
        return ret; 
  DEBUG_PRINT(KERN_DEBUG "RTDM read GPIOINmemebase gpio : ret %i, val %s \n",ret,buf);
    return 1;
 }
 
 /**
  * Write in the device
  *
  * This function is called when the device is written in realtime context.
  *
  */
static ssize_t gpio_rtdm_write_rt(struct rtdm_dev_context *context,
                      rtdm_user_info_t * user_info,
                      const void *buf, size_t nbyte)
 {
     int ret, addr,cmd;
    // char cmd[4];
cmd=0;
 /* take the semaphore */
     rtdm_sem_down(&semgpio);
    //recuperation de l'id = index pour les @ 
	addr=context->device->device_id;
	DEBUG_PRINT(KERN_DEBUG "RTDM addr to ClEAR : %x \n",GPIOCLRmemaddr[addr]);
	DEBUG_PRINT(KERN_DEBUG "RTDM addr to SET : %x \n",GPIOSETmemaddr[addr]);
	ret=-200;
     /* clear or set the gpio according to  the user buffer */
      ret = rtdm_safe_copy_from_user(user_info, &cmd, buf,1);
     DEBUG_PRINT(KERN_DEBUG "RTDM GPIO cmd : %i - ret %i \n",cmd,ret);
      switch (cmd) {
                case 0:
		//ret = rtdm_safe_copy_from_user(user_info, GPIOCLRmemaddr[addr], GPIOaddr[addr], 4);
		iowrite32(GPIOaddr[addr],GPIOCLRmemaddr[addr]);
		DEBUG_PRINT(KERN_DEBUG "RTDM GPIO CLEAR %x- ret %i \n",GPIOaddr[addr],ret);
		break;
					
				case 1:
		//ret = rtdm_safe_copy_from_user(user_info, GPIOSETmemaddr[addr], GPIOaddr[addr], 4);
		iowrite32(GPIOaddr[addr],GPIOSETmemaddr[addr]);
		DEBUG_PRINT(KERN_DEBUG "RTDM GPIO SET %x- ret %i \n",GPIOaddr[addr],ret);
		break;
				default:
                        return -250;
                }
	 
    
     /* release the semaphore */
     rtdm_sem_up(&semgpio);
  /* if an error has occured, send it to user */
     if (ret) return ret;
 DEBUG_PRINT(KERN_DEBUG "RTDM write CMPmemebase gpio : ret %i, val %s \n",ret,buf);
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
 
    .open_nrt = gpio_rtdm_open,
   // .open_rt  = gpio_rtdm_open,
 
     .ops = {
         .close_nrt = gpio_rtdm_close,
   //      .close_rt  = gpio_rtdm_close,
         .read_rt   = gpio_rtdm_read_rt,
         .write_rt  = gpio_rtdm_write_rt,
    },
 
     .device_class = RTDM_CLASS_EXPERIMENTAL,
     .device_sub_class = SOME_SUB_CLASS,
     .profile_version = 1,
     .driver_name = "SimplegpioRTDM",
     .driver_version = RTDM_DRIVER_VER(0, 1, 2),
     .peripheral_name = "Simple RTDM gpio write",
     .provider_name = "theo",
     .proc_name = devicertdm.device_name,
 };

  /**
  * This function is called when the module is unloaded
  *
  * It unregister the RTDM device, polling at 1000 ms for pending users.
  *
  */
 void gpio_rtdm_exit(void)
 {
     int i;
 
 rtdm_sem_destroy(&semgpio);
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
 
 int gpio_rtdm_init(void)
 {
     
     int i,ret;
     //void __iomem           *mmio_base;
     struct rtdm_device *gpiodevice;
     DEBUG_PRINT(KERN_DEBUG "rtmodgpio init start\n");
	 buffer.size = 0;        /* clear the buffer */
	 DEBUG_PRINT(KERN_DEBUG "RTDM semgpio init start\n");
     rtdm_sem_init(&semgpio, 1);     /* init the global semaphore */
     DEBUG_PRINT(KERN_DEBUG "RTDM semgpio init stop\n");
	 for (i = 0; i < MAX_DEVICES; i++) {
	 DEBUG_PRINT(KERN_DEBUG "RTDM malloc gpio %d  \n ",i);
     gpiodevice=kmalloc(sizeof(struct rtdm_device), GFP_KERNEL);
	 if (!gpiodevice){
		 DEBUG_PRINT(KERN_DEBUG "ECHEC RTDM malloc gpio %d \n",i);
	 gpio_rtdm_exit();
	 }
	 memcpy(gpiodevice, &devicertdm, sizeof(struct rtdm_device));
	 snprintf(gpiodevice->device_name, RTDM_MAX_DEVNAME_LEN, "rtgpio%i",i);  
	 gpiodevice->device_id = i; 
     gpiodevice->proc_name = gpiodevice->device_name;
     DEBUG_PRINT(KERN_DEBUG "RTDM req GPIOCLR ioremap gpio %c \n",gpiodevice->device_name);
   // GPIOCLRmemaddr[i]= __arm_ioremap(GPIOCLRaddr[i], 4, 2);
   GPIOCLRmemaddr[i]= __arm_ioremap(GPIOCLRaddr[GPIObankaddrtab[i]], 4, 2);
   
    DEBUG_PRINT(KERN_DEBUG "RTDM GPIOCLRMEM gpio %x",GPIOCLRmemaddr[GPIObankaddrtab[i]]);
   if (! GPIOCLRmemaddr[i]){DEBUG_PRINT(KERN_DEBUG "failed RTDM req opremap  gpio GPIOCLRaddr %x \n",i);
		kfree(gpiodevice);
	 return -1;}
	 DEBUG_PRINT(KERN_DEBUG "RTDM req GPIOSETaddr ioremap gpio %c \n",gpiodevice->device_name);
    GPIOSETmemaddr[i]= __arm_ioremap(GPIOSETaddr[GPIObankaddrtab[i]], 4, 2);
    DEBUG_PRINT(KERN_DEBUG "RTDM GPIOSETmemaddr gpio %x",GPIOSETmemaddr[GPIObankaddrtab[i]]);
   if (! GPIOSETmemaddr[i]){DEBUG_PRINT(KERN_DEBUG "failed RTDM req opremap  gpio GPIOSETaddr %x \n",i);
		kfree(gpiodevice);
	 return -1;}
	 
	 DEBUG_PRINT(KERN_DEBUG "RTDM req GPIOINaddr ioremap gpio %c \n",gpiodevice->device_name);
    GPIOINmemaddr[i]= __arm_ioremap(GPIOINaddr[GPIObankaddrtab[i]], 4, 0);
    DEBUG_PRINT(KERN_DEBUG "RTDM GPIOINaddr gpio %x",GPIOINmemaddr[GPIObankaddrtab[i]]);
   if (! GPIOINmemaddr[i]){DEBUG_PRINT(KERN_DEBUG "failed RTDM req opremap  gpio GPIOINaddr %x \n",i);
		kfree(gpiodevice);
	 return -1;}
	 
/*	 DEBUG_PRINT(KERN_DEBUG "RTDM req CMPB ioremap gpio %c \n",gpiodevice->device_name);
    CMPBmembase[i]= __arm_ioremap(CMPBaddr[i], 2, 0);
    DEBUG_PRINT(KERN_DEBUG "RTDM CMPB gpio %d",CMPBmembase[i]);
   if (! CMPBmembase[i]){DEBUG_PRINT(KERN_DEBUG "failed RTDM req opremap  gpio CMPB %d \n",i);
		kfree(eqepdevice);
	 return -1;}
*/	 
    /* DEBUG_PRINT(KERN_DEBUG "RTDM req region ioaddreqep %d \n",i);
	 if (!request_region(ioaddr[i], 4, eqepdevice->device_name)){
		 DEBUG_PRINT(KERN_DEBUG "ECHEC RTDM req region eqep %d  \n",i);
	 kfree(eqepdevice);
	 return -1;
	 };*/
	 
	 DEBUG_PRINT(KERN_DEBUG "RTDM register gpio %i",i);
     ret=rtdm_dev_register(gpiodevice);
	 if (ret < 0) {
		 DEBUG_PRINT(KERN_DEBUG "ECHEC RTDM register gpio %i",i);
	 //release_region(ioaddr[i], 4);
	 return -1;
	 }
	 device[i] = gpiodevice;
	 }
	 return 0;
 }
 

 
 
module_init(gpio_rtdm_init);
module_exit(gpio_rtdm_exit);
 
MODULE_LICENSE("GPL");
MODULE_AUTHOR("theo-FabLabLannion");
