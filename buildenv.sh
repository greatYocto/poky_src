#!/bin/bash

function find_top_dir()
{
    local TOPDIR=poky
# move into script file path
    cd $(dirname ${BASH_SOURCE[0]})
    
    if [ -d $TOPDIR ]; then
        echo $(pwd) 
    else
        while [ ! -d $TOPDIR ] && [ $(pwd) != "/" ];
        do
             cd ..
        done

        if [ -d $TOPDIR ]; then
            echo $(pwd)
        else
            echo "/dev/null"
        fi
    fi
}

ROOT=$(find_top_dir)
export TEMPLATECONF=${ROOT}/poky/meta-great/template/
export MACHINE="great"
export DISTRO="great-distro"

function build_target() {
    source poky/oe-init-build-env build2
    bitbake-layers add-layer ../poky/meta-myproject
}

build_target
