DESCRIPTION = "Nano editor example"
LICENSE = "GPLv3"
LIC_FILES_CHKSUM = "file://COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949 \         
                file://COPYING.DOC;md5=ad1419ecc56e060eccf8184a87c4285f"

SRC_URI = "https://www.nano-editor.org/dist/v6/nano-6.0.tar.gz"
SRC_URI[md5sum] = "191152bb1d26cefba675eb0e37592c4e"
DEPENDS = "ncurses"

inherit gettext pkgconfig autotools

