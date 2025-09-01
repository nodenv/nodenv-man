# nodenv-man

A [nodenv][] plugin to view `man` pages for the currently active Node.

[![Tests](https://img.shields.io/github/actions/workflow/status/nodenv/nodenv-man/test.yml?label=tests&logo=github)](https://github.com/nodenv/nodenv-man/actions/workflows/test.yml)
[![Latest GitHub Release](https://img.shields.io/github/v/release/nodenv/nodenv-man?label=github&logo=github&sort=semver)](https://github.com/nodenv/nodenv-man/releases/latest)
[![Latest Homebrew Release](<https://img.shields.io/badge/dynamic/regex?label=homebrew-nodenv&logo=homebrew&logoColor=white&url=https%3A%2F%2Fraw.githubusercontent.com%2Fnodenv%2Fhomebrew-nodenv%2Frefs%2Fheads%2Fmain%2FFormula%2Fnodenv-man.rb&search=archive%2Frefs%2Ftags%2Fv(%3F%3Cversion%3E%5Cd%2B.*).tar.gz&replace=v%24%3Cversion%3E>)](https://github.com/nodenv/homebrew-nodenv/blob/main/Formula/nodenv-man.rb)
[![Latest npm Release](https://img.shields.io/npm/v/@nodenv/nodenv-man?logo=npm&logoColor=white)](https://www.npmjs.com/package/@nodenv/nodenv-man/v/latest)

nodenv-man is a plugin for [nodenv] to easily access the man pages for the
currently set node version, e.g. `node(1)` and `npm(1)`.

Technically, nodenv-man is a wrapper for `man(1)` that takes care of using the
correct manpath.

<!-- toc -->

- [Installation](#installation)
- [Usage](#usage)

<!-- tocstop -->

## Installation

To install nodenv-man, clone this repository into your `$(nodenv root)/plugins`
directory.

```console
mkdir -p "$(nodenv root)/plugins"
git clone https://github.com/nodenv/nodenv-man.git "$(nodenv root)/plugins/nodenv-man"
```

## Usage

Simply use nodenv-man in the same way as your system's `man(1)` program. All
command-line options are passed through to it.

Some examples:

- Show `node(1)` manual:

```console
nodenv man node
```

- Show `npm(1)` manual:

```console
nodenv man 1 npm
```

- Print location of `node(1)` manual:

```console
$ nodenv man -w node
/usr/local/var/nodenv/versions/4.2.1/share/man/man1/node.1
```

- Change node version and print new location of man page:

```console
$ NODENV_VERSION=5.0.0 nodenv man -w node
/usr/local/var/nodenv/versions/5.0.0/share/man/man1/node.1
```

[nodenv]: https://github.com/nodenv/nodenv
