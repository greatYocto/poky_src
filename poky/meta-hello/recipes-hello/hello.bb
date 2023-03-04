DESCRIPTION = "Simple hello example"
LICENSE = "CLOSED"

VAR4 = "123"
VAR4_append = "456"
VAR4 += "789"

do_printhello(){
        bbwarn "hello world!"
        bbwarn "VAR4: ${VAR4}"
}

addtask do_printhello after do_compile before do_install
