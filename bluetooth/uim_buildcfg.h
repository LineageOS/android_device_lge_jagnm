#ifndef _UIM_BUILDCFG_H
#define _UIM_BUILDCFG_H

/* Sys_fs entry. The Line discipline driver sets this to 1 when bluedroid open BT protocol driver */
/* Note: This entry is used in bt_hci_bdroid.c (Android source). Also present in
 *  brcm_sh_ldisc.c (v4l2_drivers) and board specific file (android kernel source) */
#define INSTALL_SYSFS_ENTRY "/sys/bus/platform/drivers/bcm_ldisc/bcmbt_ldisc.79/install"
#define LDISC_VENDOR_PARAMS   "/sys/bus/platform/drivers/bcm_ldisc/bcmbt_ldisc.79/vendor_params"

#define BDADDR_SYSFS_ENTRY  "/sys/bus/platform/drivers/bcm_ldisc/bcmbt_ldisc.79/bdaddr"
#define FW_PATCHFILE_SYSFS_ENTRY  "/sys/bus/platform/drivers/bcm_ldisc/bcmbt_ldisc.79/fw_patchfile"
#define LDISC_SYSFS_SNOOP     "/sys/bus/platform/drivers/bcm_ldisc/bcmbt_ldisc.79/snoop_enable"
#endif