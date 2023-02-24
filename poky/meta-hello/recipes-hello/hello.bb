DESCRIPTION = "Simple hello example"
LICENSE = "CLOSED"

do_printhello(){
        bbwarn "hello world!"
}

do_printhello_prepend(){
        bbwarn "this is prepend"
}

do_printhello_append(){
        bbwarn "this is append"
}

addtask do_printhello after do_compile before do_install
