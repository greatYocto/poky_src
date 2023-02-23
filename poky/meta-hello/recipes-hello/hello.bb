DESCRIPTION = "Simple hello example"
LICENSE = "CLOSED"

A_VAR ?= "yocto1"
B_VAR ?= "yocto2"
B_VAR ?= "yocto3"
C_VAR ?= "yocto4"
C_VAR = "yocto5"

do_printhello(){
     bbwarn "hello world!"
     bbwarn "A_VAR: ${A_VAR}"
     bbwarn "B_VAR: ${B_VAR}"
     bbwarn "C_VAR: ${C_VAR}"
}

addtask do_printhello after do_compile before do_install
