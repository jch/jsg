# jsg

Bash static site generator supporting GitHub flavored markdown.

## Examples

```sh
# output/index.html
$ jsg -d output -l layout.html src/index.md

# output/posts/a-post.md
$ jsg -d output/posts -l layout.html src/posts/a-post.md
```
## History

* [Perl static site generator](http://jch.github.io/articles/2008/01/27/flaco-blog.html) perl static site generator. [source](https://github.com/jch/blog)
* [Rails app](https://github.com/jch/whatcodecraves.com) crawl pages to generate static site.
* [jch.github.io](https://github.com/jch/jch.github.io) output of static site.

## Development

* Follow [Google shell styleguide](https://google.github.io/styleguide/shell.xml)
* Test with [bats](https://github.com/sstephenson/bats)

```sh
# run all tests
$ test/bin/*

# run individual test
$ test/bin/markdown_test.sh
```
