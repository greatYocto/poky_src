DESCRIPTION = "Simple hello example"
LICENSE = "CLOSED"

LOCAL_VAR = "local var"
do_printhello(){
        bbwarn "hello world!"
        bbwarn "GLOBAL_VAR is ${GLOBAL_VAR}"
        bbwarn "LOCAL_VAR is ${LOCAL_VAR}"
}

addtask do_printhello after do_compile before do_install

