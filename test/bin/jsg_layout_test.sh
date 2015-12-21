#!/usr/bin/env test/bats/bin/bats

@test "layout without template" {
  echo 'foo' | bin/jsg_layout | grep -E '^foo$'
  [ $? = 0 ]
}

@test "layout with template" {
  template="$BATS_TMPDIR/template.html"
  template="tmp/template.html"
  echo 'header <!-- #content --> footer' > $template
  echo 'body' | bin/jsg_layout $template | grep -E '^header body footer$'
}
