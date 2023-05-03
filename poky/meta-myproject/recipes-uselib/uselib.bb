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

#RDEPENDS_${PN} = "makelib"
DEPENDS = "makelib"

S = "${WORKDIR}"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

FILES_${PN} += "${bindir}/makevoicemain"

pkg_postinst_${PN} () {
	if [ "x$D" = "x" ]; then
		printf "It shouldn't be executed"
	else
		file=$D${bindir}/test.txt
		printf "This is postinst test.\n" > $file
	fi
}

pkg_postinst_ontarget_${PN} () {
	echo "This is postinst test on target" > ${bindir}/test2.txt
}
