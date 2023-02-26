DESCRIPTION = "Simple hello example"
LICENSE = "CLOSED"

RECIPE_VAR = "This is variable in recipe"

do_printhello(){
        RECIPE_VAR="This var is changed in printhello"
        bbwarn "hello world!"
}
addtask do_printhello after do_compile before do_install

do_recipe_namespace(){
        bbwarn "RECIPE_VAR: ${RECIPE_VAR}"
}
addtask do_recipe_namespace after do_printhello before do_install
      


