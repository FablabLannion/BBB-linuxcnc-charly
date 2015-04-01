#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x8f375d60, "module_layout" },
	{ 0xdb1fae8d, "rtdm_dev_register" },
	{ 0x40a6f522, "__arm_ioremap" },
	{ 0xb81960ca, "snprintf" },
	{ 0x9d669763, "memcpy" },
	{ 0x8758668a, "kmem_cache_alloc_trace" },
	{ 0x86c8ad2e, "malloc_sizes" },
	{ 0xded2d43b, "rtdm_sem_init" },
	{ 0x37a0cba, "kfree" },
	{ 0x85d6773d, "rtdm_dev_unregister" },
	{ 0x9b85880b, "xnselect_destroy" },
	{ 0x5ad53b72, "__rtdm_synch_flush" },
	{ 0x67c2fa54, "__copy_to_user" },
	{ 0xac8f37b2, "outer_cache" },
	{ 0xfbc74f64, "__copy_from_user" },
	{ 0xf8892f01, "rtdm_sem_up" },
	{ 0x906efc50, "rtdm_sem_down" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "B4BC280B0DD51D52FA06A90");
