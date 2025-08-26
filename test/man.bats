#!/usr/bin/env bats

load test_helper

@test "prepends current node prefix to MANPATH" {
  stub nodenv-prefix 'echo 123'
  stub man "npm : echo \$MANPATH"

  MANPATH=original_manpath run nodenv-man npm

  assert_success
  assert_output "123/share/man:original_manpath"

  unstub nodenv-prefix
  unstub man
}
