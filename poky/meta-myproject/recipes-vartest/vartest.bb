LICENSE = "CLOSED"
do_test1() {
    bbwarn "variable test"
}
addtask do_test1 before do_build

do_test1[postfuncs] += "posttest"

posttest() {
    bbwarn "post func test"
}

