load ../node_modules/bats-assert/all
load ../node_modules/bats-mock/stub

# guard against executing this block twice due to bats internals
if [ "$NODENV_ROOT" != "${BATS_TMPDIR}/nodenv" ]; then
  export NODENV_ROOT="${BATS_TMPDIR}/nodenv"

  PATH=/usr/bin:/bin:/usr/sbin:/sbin
  PATH="${BATS_TEST_DIRNAME}/bin:$PATH"
  PATH="${BATS_TEST_DIRNAME}/../bin:$PATH"
  export PATH
fi
