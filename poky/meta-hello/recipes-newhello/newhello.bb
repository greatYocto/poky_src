DESCRIPTION = "Simple helloworld application example"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://COPYING;md5=80cade1587e04a9473701795d41a4f0c"

SRC_URI = "file://newhello.c"
SRC_URI += "file://COPYING"
SRC_URI += "file://hello.service"

inherit systemd

S = "${WORKDIR}"
SYSTEMD_SERVICE_${PN} = "hello.service"
SYSTEMD_AUTO_ENABLE = "enable"

do_compile(){
 ${CC} newhello.c ${LDFLAGS} -o hello
}

do_install() {
	install -d ${D}${bindir}
	install -m 0755 hello ${D}${bindir}

  install -d ${D}${systemd_unitdir}/system
  install -m 0644 hello.service ${D}${systemd_unitdir}/system
}

RREPLACES_${PN} = "hello"
RPROVIDES_${PN} = "hello"
RCONFLICTS_${PN} = "hello"

FILESEXTRAPATHS_prepend := "${THISDIR}/source:"

FILES_${PN} += "${bindir}/hello"
FILES_${PN} += "${systemd_unitdir}/system/hello.service"
