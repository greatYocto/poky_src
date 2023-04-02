IMAGE_INSTALL += "packagegroup-great"
IMAGE_INSTALL += "uselib makelib"

test_postprocess_func(){
  echo "${ROOTFS_POSTPROCESS_COMMAND}" > ${IMAGE_ROOTFS}/yocto.txt
}

ROOTFS_POSTPROCESS_COMMAND += "test_postprocess_func;" 

