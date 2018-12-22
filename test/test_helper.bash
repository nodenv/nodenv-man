# shellcheck shell=bash

load ../node_modules/bats-support/load
load ../node_modules/bats-assert/load
load ../node_modules/bats-mock/stub

PATH=/usr/bin:/bin:/usr/sbin:/sbin
PATH="${BATS_MOCK_BINDIR}:$PATH"
PATH="${BATS_TEST_DIRNAME}/../bin:$PATH"
export PATH
