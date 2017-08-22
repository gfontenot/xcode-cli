# Xcode CLI

Helper scripts for working with Xcode from the command line.

These were originally extracted from [my dotfiles] in the hopes that making
them easier to share will encourage external contributions.

[my dotfiles]: https://github.com/gfontenot/dotfiles

## Installation

wip (will be installable via Homebrew)

## Usage

```
# Open a directory with Xcode
❯ xcode open

# Open a scratch playground with Xcode
# Requires a playground to be located at ~/.scratch.playground
❯ xcode play

# List installed Xcode versions
❯ xcode list

# Switch the currently selected Xcode version using fzf
❯ xcode switch

# Print the current Xcode version
❯ xcode version
```

See the `--help` flags for the individual commands for more options.

## Extending

This tool follows the same pattern set by `git` and similar commands. It
searches the `PATH` for commands prefixed with `xcode-` and adds them as
subcommands. For example, if we added the following to our path as an
executable named `xcode-foo`:

```sh
#!/bin/sh

echo "Hello World"
```

Then we could run `xcode foo`:

```
$ xcode foo
Hello World
```
