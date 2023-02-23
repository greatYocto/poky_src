DESCRIPTION = "Simple hello example"
LICENSE = "CLOSED"

VAR1 = "hello!"
VAR2 = "${VAR1} my name is yocto"

do_printhello(){
        bbwarn "hello world!"
        bbwarn "VAR2: ${VAR2}"
}

addtask do_printhello after do_compile before do_install
