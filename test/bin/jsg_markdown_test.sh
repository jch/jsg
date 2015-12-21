#!/usr/bin/env test/bats/bin/bats

@test "markdown" {
  run bash -c 'echo "#header" | bin/jsg_markdown'
  [ "$status" -eq 0 ]
  echo "$output" | grep "<h1>"
}
