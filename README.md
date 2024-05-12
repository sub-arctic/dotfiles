## Dotfiles
This repository contains my personal configurations and scripts for NeoVim, Sway, Hyprland and all the other various programs that combine to create a functional and (reasonably) productive Void Linux desktop.

All scripts and configurations provided are tested and work (to the best of my knowledge) on `Void Linux x86_64-musl` and `glibc`. 

![A picture of a dark window manager](https://github.com/sub-arctic/dotfiles/blob/9bd26fa3c369b9162e6f344263dfb058a3c0f5a9/pictures/screenshots/1715472458_grim_alloutputs.png)

![A picture of a light window manager](https://github.com/sub-arctic/dotfiles/blob/main/pictures/screenshots/1715472458_grim_alloutputs.png)

### Programs used
- `alacritty` → *terminal emulator of choice*
- `cava` → *tui audio visualiser*
- `dunst` → *notification daemon*
- `hyprland` → *eye-candy window manager*
- `mpd` → *daemon for playing and managing a local music database*
- `ncmpcpp` → *tui for managing mpd*
- `neovim` → *terminal editor of choice*
- `sway` → *my favourite, "no-frills" window manager*
- `swaylock` → *simple screen locker*
- `tofi` → *fast, sleek application launcher that works with wayland*
- `waybar` → *status bar*

### Setup
> All configuration files are mangaged by `chezmoi`, which makes syncing configurations between systems relatively straightforward


> Note: `hyprland` and `swww` are not packaged in the repos, but can be built pretty easily with xbps-src. [hyprland-void](https://github.com/Makrennel/hyprland-void) provides template files for `hyprland` and its dependencies. A functional `swww` template is [provided](https://github.com/sub-arctic/dotfiles/blob/main/srcpkgs/swww/template), but swaybg works just fine if you don't want to build the package yourself. Same goes for Hyprland.

Run ```chezmoi init -D *directory* https://github.com/sub-arctic/dotfiles``` to initialise the repository.
Or, if you are feeling lucky, run `chezmoi apply -v`, and it will apply to your home directory, and ask before overwriting files.

```chezmoi apply -D *directory*``` will copy files from the cloned repo to the provided directory, handling paths and executables. From there, you can use what you like. If you want to directly use these configurations, run the previous command but without the -D, and it will use your home directory. It will prompt you whether or not to overwrite, skip or merge files, but a backup of your configuration files is recommended before applying anything.

If you don't want to install or use `chezmoi`, the files are still present, but some are prefixed with "executable_", and some directory names are different. Do note that some of the programs leverage scripts located in `~/.local/bin`, so adding that to the path may help (though most are called directly by path).


