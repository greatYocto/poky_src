SUMMARY = "Example of how to build an external linux kernel module"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://COPYING;md5=ade99a31b7125f81bb82ffc454b3e6ac"

inherit module

SRC_URI = "file://Makefile \
          file://mykernelmod.c \
          file://COPYING \
          "
#PROVIDES = "mykernelmod"
RPROVIDES_${PN} += "kernel-module-mykernelmod"

KERNEL_MODULE_AUTOLOAD += "mykernelmod"
S = "${WORKDIR}"


ALLOW_EMPTY_${PN} = "1"
FILESEXTRAPATHS_prepend := "${THISDIR}/file:"

