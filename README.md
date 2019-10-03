# Mac OS X Dev Setup for Fullstack Web Developer

## 01 `Update` MacOS

First thing you need to do, on any OS actually, is update the system! For that: **Apple Icon > Software Update...**

## 02 `System Preference`

If this is a new computer, there are a couple tweaks I like to make to the System Preferences. Feel free to follow these, or to ignore them, depending on your personal preferences.

> **Apple Icon > System Preferences**:

- Trackpad > Tap to click
- Keyboard > Key Repeat > Fast (all the way to the right)
- Keyboard > Delay Until Repeat > Short (all the way to the right)
- Dock bar > Automatically hide and show the Dock with icons

## 03 `install.sh` the common used software

```bash
git clone https://github.com/vikbert/awesome-macbook-setup.git
cd awesome-macbook-setup
bash install.sh
```

## 04 `fish` shell

> create the `aliases` and config the `color`

```bash
cd fish
bash  install.sh
```

> import the `color` file

## 05 `VS-code`

> import/overwrite settting.json

general settings for the `vs code` editor. Just copy and paster the content to `settings.json` within the editor

> import the snippets from `markdown.json`

`CMD+shift+p` to open with `user snippets`, and select `markdown.json` the code snippets to the plugin `markdown all in one`.
