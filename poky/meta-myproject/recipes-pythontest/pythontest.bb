LICENSE = "CLOSED"
TESTVAR = "This var is read by python function"

python do_testA () {
    pythonvar = d.getVar('TESTVAR', True)
    bb.warn(pythonvar)
}
addtask do_testA before do_build

python do_testB () {
    d.setVar('TESTVAR', "This var is set by python function")
    pythonvar2 = d.getVar('TESTVAR', True)
    bb.warn(pythonvar2)
}
addtask do_testB before do_testA
