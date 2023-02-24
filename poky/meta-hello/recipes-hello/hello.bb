DESCRIPTION = "Simple hello example"
LICENSE = "CLOSED"

VAR1 = "123 456 789 123456789 789 456 123"
VAR1_remove = "123"

do_printhello(){
        bbwarn "hello world!"
        bbwarn "VAR1: ${VAR1}"
}

addtask do_printhello after do_compile before do_install
