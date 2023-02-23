DESCRIPTION = "Simple hello example"
LICENSE = "CLOSED"

VAR1 = "12"
VAR1 .= "34"
VAR2 = "89"
VAR2 =. "67"
VAR3 = "5"
VAR3 =."${VAR1}"
VAR3 .= "${VAR2}"

do_printhello(){
        bbwarn "hello world!"
        bbwarn "VAR1: ${VAR1}"
        bbwarn "VAR2: ${VAR2}"
        bbwarn "VAR3: ${VAR3}"
}

addtask do_printhello after do_compile before do_install
