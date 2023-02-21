DESCRIPTION = "Simple hello example"
LICENSE = "CLOSED"

do_printhello(){
        bbwarn "hello world!"
}

addtask do_printhello after do_compile before do_install
