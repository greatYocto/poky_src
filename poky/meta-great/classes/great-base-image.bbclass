inherit core-image

IMAGE_FSTYPES = " tar.bz2 ext4" 
IMAGE_ROOTFS_SIZE = "10240"
IMAGE_ROOTFS_EXTRA_SPACE = "10240"
IMAGE_ROOTFS_ALIGNMENT = "1024"

CORE_IMAGE_BASE_INSTALL = "\
    packagegroup-core-boot \
    packagegroup-base-extended \
    ${CORE_IMAGE_EXTRA_INSTALL} \
"


