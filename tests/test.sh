#!/bin/bash

WORKDIR_TEST=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
TESTCASES=$(mktemp testcases.XXXXXX)

. ${WORKDIR_TEST}/../libs/log.sh
. ${WORKDIR_TEST}/../libs/color.sh

function create_testcases()
{
    if [ -z "${TESTCASES}" ] || [ ! -f ${TESTCASES} ]; then
        log_err "testcases file not found"
        return 1
    fi

    cat << EOF >> ${TESTCASES}
# num#desc#command
001#test color variables#${WORKDIR_TEST}/testcolor.sh
002#test log function#${WORKDIR_TEST}/testlog.sh
EOF
}

function remove_testcases()
{
    [ -f "${TESTCASES}" ] && rm -f ${TESTCASES}
}

function pre_tests()
{
    create_testcases
}

function run_test()
{
    local num=$(echo $1 | awk -F'#' '{print $1}')
    local cmd=$(echo $1 | awk -F'#' '{print $3}')
    log_info "------------- ${RESET}${ITALIC}${BOLD}${FG_CYAN}testcase ${num}${RESET} --------------"
    log_info "running ${cmd}"
    log_info "---------------- ${RESET}${ITALIC}${FG_CYAN}output${RESET} -----------------"
    eval ${cmd}
    return 0
}

function run_tests()
{
    local desc=

    log_info "=============== run tests ==============="    
    IFS=""
    while read testcase; do
        echo "${testcase}" | grep -q "^#"
        [ $? -eq 0 ] && continue
        desc=$(echo ${testcase} | awk -F'#' '{print $2}')
        run_test "${testcase}"
        if [ $? -eq 0 ]; then
            log_succ "${desc}"
        else
            log_fail "${desc}"
        fi
        echo ""
    done < ${TESTCASES}
}

function pst_tests()
{
    remove_testcases
}

function test_main()
{
    pre_tests
    run_tests
    pst_tests
}

test_main
