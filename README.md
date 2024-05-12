## Dotfiles
This repository contains my personal configurations and scripts for NeoVim, Sway, Hyprland and all the other various programs that combine to create a functional and (reasonably) productive Void Linux desktop.

All scripts and configurations provided are tested and work (to the best of my knowledge) on `Void Linux x86_64-musl` and `glibc`. 

![A picture of a dark window manager](https://github.com/sub-arctic/dotfiles/blob/02c7acdd2835d96e3af781983493efba98402b1d/pictures/screenshots/1715472454_grim_alloutputs.png)

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

Run `chezmoi init github.com/sub-arctic/dotfiles` to initialise the repository. 

From there, you can apply what you want, apply the dotfiles to a specific repository, or apply them directly to your home directory.

Apply only the NeoVim configuration:

```chezmoi apply -v ~/.config/nvim```

Apply everything to a temporary folder:

```chezmoi apply -v -d ~/foobar```

Apply everything to your home directory:

```chezmoi apply -v```

For more info on how to apply what where using chezmoi, read the [docs](https://www.chezmoi.io/).


