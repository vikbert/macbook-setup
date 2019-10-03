#!/bin/bash

#### config aliases for commands
ln -s ./config.fish ~/.config/fish/config.fish
echo "create soft-link for command aliases."

#### config the color of shell console
ln -s ./fish_variables ~/.config/fish/fish_variables
echo "create soft-link for fish shell variable(this can define the color of fish shell prompt)."

#### show the final result
## 2x soft link should be created
ls -alh ~/.config/fish
