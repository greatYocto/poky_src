DESCRIPTION = "Simple hello example"
LICENSE = "CLOSED"

VAR1 = "jumps over"
VAR2 = "${VAR1} the lazy dog."
VAR1 = "talls on"
VAR3 = "The rain in spain ${VAR1} the plain"
VAR4 := "The quick brown for ${VAR2}"

do_printhello(){
        bbwarn "hello world!"
        bbwarn "VAR4: ${VAR4}"
}

addtask do_printhello after do_compile before do_install
