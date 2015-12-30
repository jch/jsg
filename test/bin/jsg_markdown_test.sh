#!/usr/bin/env test/bats/bin/bats

@test "markdown" {
  output=$(cat 'test/fixtures/file.md' | bin/jsg_markdown)
  echo $output | grep '<h1>'
  echo $output | grep '<p>paragraph one</p>'
  echo $output | grep '<p>paragraph two</p>'
}
