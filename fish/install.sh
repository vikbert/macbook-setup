#!/bin/bash

ln -s ./config.fish ~/.config/fish/config.fish
echo "create soft-link for command aliases. \n"

ln -s ./fish_variables  ~/.config/fish/fish_variables
echo "create soft-link for fish shell variable(this can define the color of fish shell prompt). \n"