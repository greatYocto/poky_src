CRIPTION = "this package group is great's packages"

inherit packagegroup

PACKAGE_ARCH = "${MACHINE_ARCH}"

RDEPENDS_${PN} = "\
                hello \
                nano \
              "
