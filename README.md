# Back scratch

Open new scratch window. Additionally allows to load output of Vim command,
shell command of register into such buffer.

## Thanks

Based on -romainl- script -  https://gist.github.com/romainl/eae0a260ab9c135390c30cd370c20cd7

## Usage:

      :Scratch "open new, empty, scratch window
      :Scratch ls " show the full output of command :ls in scratch window
      :Scratch !ls -la " show the full output of command :!ls -la in scratch window
      :Scratch @+ " show the full output of '+' register in scratch window

## Additions:

- by default use :new instead of :vnew
- accepts modifiers like :vertical or :aboveleft to control where the
  scratchpad will be positioned
- adds support for opening scratchpads for registers via @ prefix
- adds :Scratchify to change any buffer into scratchpad

## TODO:

- support for specifying filetype via +ft
