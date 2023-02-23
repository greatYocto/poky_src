DESCRIPTION = "Simple hello2 example"
LICENSE = "CLOSED"

do_printhello2(){
        bbwarn "hello world second"
        bbwarn "LOCAL_VAR is ${LOCAL_VAR}"
}

DEPENDS = "hello"

addtask do_printhello2 after do_compile before do_install

