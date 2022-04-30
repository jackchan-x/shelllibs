#!/bin/bash

WORKDIR_TESTLOG=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
. ${WORKDIR_TESTLOG}/../libs/log.sh

log_info "info"
log_warn "warn"
log_err "err"
log_succ "succ"
log_ok "ok"
log_fail "fail"
log_debug "debug" 2
log_test "test"
