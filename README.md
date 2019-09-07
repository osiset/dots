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
+ Terminal: URXVT
+ Fonts: Hack (Terminal), Ubuntu (Interface)
+ Colors: Scorched & Crackpot (from Rainglow.io)

## Screenshots

### Scorched

![Neofetch](/screenshot.png?raw=true)

### Crackpot

![Neofetch](/screenshot2.png?raw=true)

## Resources

### Xresources

Xresources are defined in sub-files under `.xres/`. Each file in `.xres/` is specific to an application or configuration, with themes existing in `.xres/themes`. This allows for easily swapping themes by changing a single line.

### Firefox

Firefox themes for both colorsets are located in `firefox/`. These colors we're generated with Firefox Color extension and can be installed by double clicking.

### Bin

Contains some helpful scripts.

+ *audio-switch*: Uses Rofi to allow you to swap which PulseAudio sink is the main.
+ *buku-local-copy*: A script to export Buku (bookmark database) to an HTML file at a location.
+ *diff-so-fancy*: More readable diffs with Git.
+ *ospaste*: A script to paste images, files, or direct inputs over to OpenSUSE's paste service through command line.
+ *zypperdiff*: Shows changelogs for all packages updated.

