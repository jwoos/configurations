#! /usr/bin/env bash

# remaps caps lock to escape
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"
