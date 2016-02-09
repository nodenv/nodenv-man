[![Build Status](https://travis-ci.org/nodenv/nodenv-man.svg?branch=master)](https://travis-ci.org/nodenv/nodenv-man)

# nodenv-man

nodenv-man is a plugin for [nodenv] to easily access the man pages for the
currently set node version, e.g. `node(1)` and `npm(1)`.

Technically, nodenv-man is a wrapper for `man(1)` that takes care of using the
correct manpath.

## Installation

To install nodenv-man, clone this repository into your `$(nodenv root)/plugins`
directory.

    ```sh
    $ mkdir -p "$(nodenv root)/plugins"
    $ git clone https://github.com/nodenv/nodenv-man.git "$(nodenv root)/plugins/nodenv-man"
    ```

## Usage

Simply use nodenv-man in the same way as your system's `man(1)` program. All
command-line options are passed through to it.

Some examples:

* Show `node(1)` manual:

    ```sh
    $ nodenv man node
    ```

* Show `npm(1)` manual:

    ```sh
    $ nodenv man 1 npm
    ```

* Print location of `node(1)` manual:

    ```sh
    $ nodenv man -w node
    /usr/local/var/nodenv/versions/4.2.1/share/man/man1/node.1
    ```

* Change node version and print new location of man page:

    ```sh
    $ NODENV_VERSION=5.0.0 nodenv man -w node
    /usr/local/var/nodenv/versions/5.0.0/share/man/man1/node.1
    ```


[nodenv]: https://github.com/nodenv/nodenv
