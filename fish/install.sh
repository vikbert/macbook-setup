#!/bin/bash

#### config aliases for commands
ln -s ./config.fish ~/.config/fish/config.fish
echo "create soft-link for command aliases."

#### config the color of shell console
ln -s ./fish_variables ~/.config/fish/fish_variables
echo "create soft-link for fish shell variable(this can define the color of fish shell prompt)."

rm -rf ~/.config/fish/functions/fish_prompt.fish
ln -s ./functions/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish
echo "create soft-link for fish prompt"

#### config the bash_profile
ln -s ./.bash_profile ~/.config/fish/.bash_profile
echo "overwrite bash_profile"

#### show the final result
## 2x soft link should be created
ls -alh ~/.config/fish
ls -alh ~/.config/fish/functions
