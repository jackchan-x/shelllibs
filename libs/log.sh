#!/bin/bash

WORKDIR_LOG=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
. ${WORKDIR_LOG}/color.sh

function log_common()
{
    echo -e "[$(date +'%F %T')] $1"
}

function log_info()
{
    log_common "<${RESET}${ITALIC}${FG_CYAN}info${RESET}> $1"
}

function log_warn()
{
    log_common "<${RESET}${ITALIC}${BOLD}${FG_YELLOW}warning${RESET}> $1"
}

function log_err()
{
    log_common "<${RESET}${ITALIC}${BOLD}${FG_RED}error${RESET}> $1"
}

function log_succ()
{
    log_common "<${RESET}${ITALIC}${BOLD}${FG_GREEN}success${RESET}> $1"
}

function log_ok()
{
    log_common "<${RESET}${ITALIC}${BOLD}${FG_GREEN}ok${RESET}> $1"
}

function log_fail()
{
    log_common "<${RESET}${ITALIC}${BOLD}${FG_RED}failed${RESET}> $1"
}

function log_debug()
{
    if [ ! -z "$2" ] && [ $2 -gt 1 ] && [ ! -z "$1" ]; then
        log_common "<${RESET}${ITALIC}${FG_MAGENTA}debug${RESET}> $1"
    fi
}

function log_test()
{
    log_common "<${RESET}${ITALIC}${FG_BLUE}test${RESET}> $1"
}
