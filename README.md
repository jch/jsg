# jsg

Bash static site generator supporting GitHub flavored markdown.

## Usage

    jsg [options] <file> [<file> ...]

    options
    -d directory : Specify a optional directory to write to, uses the same name as `file`, but with an html suffix. If nothing specified outputs to stdout.
    -l layout    : Specify a optional layout file. Content will be inserted after `<!-- #content -->`.
    -v           : Verbose

## Examples

```sh
# increase GitHub Markdown API rate limit. Create personal access token with no permissions
export JSG_TOKEN=......

# output/index.html
$ jsg -d output -l layout.html src/index.md

# output/posts/a-post.md
$ jsg -d output/posts -l layout.html src/posts/a-post.md
```

## Development

* Follow [Google shell styleguide](https://google.github.io/styleguide/shell.xml)
* Test with [bats](https://github.com/sstephenson/bats)

```sh
# run all tests
$ test/bin/*

# run individual test
$ test/bin/markdown_test.sh
```

## History

* [Perl static site generator](http://jch.github.io/articles/2008/01/27/flaco-blog.html) perl static site generator. [source](https://github.com/jch/blog)
* [Rails app](https://github.com/jch/whatcodecraves.com) crawl pages to generate static site.
* [jch.github.io](https://github.com/jch/jch.github.io) output of static site.
