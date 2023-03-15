SRC_URI += "file://new-kernel-driver.cfg \
          file://0001-Learning-yocto-add-new-kernel-driver.patch \
          "

KBRANCH_great = "v5.4/standard/base"
KMACHINE_great = "qemux86-64"
SRCREV_machine_great = "35826e154ee014b64ccfa0d1f12d36b8f8a75939"
COMPATIBLE_MACHINE_great = "great"
LINUX_VERSION_great = "5.4.219"

FILESEXTRAPATHS_prepend := "${THISDIR}/file:"
