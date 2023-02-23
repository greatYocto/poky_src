DESCRIPTION = "Simple hello example"
LICENSE = "CLOSED"

VAR1 = "12"
VAR1_append = "34"
VAR2 = "89"
VAR2_prepend = "67"
VAR3 = "5"
VAR3_prepend ="${VAR1}"
VAR3_append = "${VAR2}"

do_printhello(){
        bbwarn "hello world!"
        bbwarn "VAR1: ${VAR1}"
        bbwarn "VAR2: ${VAR2}"
        bbwarn "VAR3: ${VAR3}"
}

addtask do_printhello after do_compile before do_install
