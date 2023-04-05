DESCRIPTION = "This recipes makes execution file which uses libtest.so"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://makevoicemain.c \
          "

do_compile() {
    ${CC} ${LDFLAGS} -I -wl,-rpath=${libdir} -L. makevoicemain.c -ltest -o makevoicemain
}

do_install() {
    install -d ${D}${bindir}
    install -m 0755 makevoicemain ${D}${bindir} 
}

fakeroot do_test() {
     chown root:root ${D}${bindir}/makevoicemain
     ls -l ${D}${bindir} > ${WORKDIR}/1.txt
}

addtask test after do_install before do_package
#do_test[fakeroot] = "1"


#RDEPENDS_${PN} = "makelib"
DEPENDS = "makelib"

S = "${WORKDIR}"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

FILES_${PN} += "${bindir}/makevoicemain"
