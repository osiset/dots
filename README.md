# Dot files

## Setup

+ DE: XFCE
+ WM: i3
+ Panel: Polybar
+ Notification Manager: Dunst
+ Network Manager: NetworkManager (nmtui)
+ Runner: Rofi (drun, window)
+ Bluetooth: Blueberry
+ Audio: PulseAudio
+ Greeter: LightDM
+ Clipboard: Clipit
+ Shell: ZSH (Oh-My-ZSH)
+ Terminal: XFCE Terminal

## Screenshots

### Outrun (example)

![Neofetch](/screenshot3.png?raw=true)

### Scorched (example)

![Neofetch](/screenshot.png?raw=true)

### Crackpot (example)

![Neofetch](/screenshot2.png?raw=true)

## Resources

### Xresources

Xresources are defined in sub-files under `.xres/`. Each file in `.xres/` is specific to an application or configuration, with themes existing in `.xres/themes`. This allows for easily swapping themes by changing a single line.

### Firefox

Firefox themes for both colorsets are located in `firefox/`. These colors we're generated with Firefox Color extension and can be installed by double clicking.

### Bin

Contains some helpful scripts.

### Theme Generation

I have several scripts which neatly switches the whole desktop theme.

Following `Base`, `VSCode`, and `GTK` below will produce a consistent desktop theme experience.

#### Base

Themes are generated with a combination of custom scripts and external scripts.

Running `bin/desktop-theme create (new_theme_name) (wallpaper_path)` will do the following:

1. Runs PyWal to *only* set the colors in `.cache/wal/`.
2. Converts the PyWal JSON to an Xresource theme and places it into `.xres/themes/`.
3. Uses templates in `.templates/` to produce a new Dunst theme based on the new colors.
4. Restarts Polybar and i3 so those colors may be refelected.
5. Creates an XFCE4 terminal color scheme based on the new colors that's selectable in the settings.
6. Outputs the result of the new Xresources theme.
7. Outputs next steps (how to set Firefox colors, etc).
8. Outputs string to use in Slack for slack colors.

#### VSCode

`wal-theme` is a VSCode extension which watches `.cache/wal/colors` and automatically updates the VSCode theme to match.

#### GTK

Clone [gtk-colorizer](https://github.com/ohmybrew/gtk-colorizer), then run `colorize`. This will read Xresource colors and create a GTK theme to match automatically.
