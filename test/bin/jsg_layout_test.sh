#!/usr/bin/env test/bats/bin/bats

@test "layout without template" {
  echo 'foo' | bin/jsg_layout | grep -E '^foo$'
  [ $? -eq 0 ]
}

@test "layout with template" {
  echo 'EXPECTED' | bin/jsg_layout 'test/fixtures/test_layout.html' | grep 'EXPECTED'
}
