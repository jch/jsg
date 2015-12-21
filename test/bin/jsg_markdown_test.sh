#!/usr/bin/env test/bats/bin/bats

@test "markdown" {
  echo "#header" | bin/jsg_markdown | grep "<h1>"
  [ $? -eq 0 ]
}
