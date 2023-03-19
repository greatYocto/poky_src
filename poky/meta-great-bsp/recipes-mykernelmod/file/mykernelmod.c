#include <linux/module.h>

int init_module(void)
{
    printk("hello kernel module! \n");
    printk("hello kernel module! \n");
    printk("hello kernel module! \n");
    printk("hello kernel module! \n");
    printk("hello kernel module! \n");

    return 0;
}

void cleanup_module(void)
{
    printk("Goodbye kernel module! \n");
}

MODULE_LICENSE("MIT");
