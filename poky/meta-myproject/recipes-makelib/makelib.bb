DESCRIPTION = "This recipe makes shared library"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://dog.c \
         file://cat.c \
         file://func.h \
          "
do_compile() {
    ${CC} -fPIC -c dog.c
    ${CC} -fPIC -c cat.c
    ${CC} ${LDFLAGS} -shared -Wl,-soname=libtest.so.1 -o libtest.so.1.0 *.o
}

do_install() {
    install -d ${D}${libdir}
    install -m 0755 libtest.so.1.0  ${D}${libdir}
    ln -s libtest.so.1.0 ${D}${libdir}/libtest.so.1
    ln -s libtest.so.1 ${D}${libdir}/libtest.so
    install -d ${D}${includedir}
    install -m 0644 func.h ${D}${includedir}
}

#RPROVIDES_${PN} = "makelib"


FILES_${PN} = "${libdir}/libtest.so.1.0 ${libdir}/libtest.so.1"
FILES_${PN}-dev = "${libdir}/libtest.so ${includedir}/func.h"

S = "${WORKDIR}"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

