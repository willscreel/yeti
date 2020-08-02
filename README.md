# yeti

yeti is a build system to generate a dark version of arc-theme.

![A screenshot of the theme](https://imgur.com/r4paSoj.png)

![A screenshot of the lith variant of the theme](https://imgur.com/A8idm3q.png)

### Dependencies to Build

#### For Debian based distros (Ubuntu / BunsenLabs)

* `build-essential` (make)
* `gtk2-engines-murrine` (optional) - for gtk2 themes
* `autoconf` (make)
* `automake` (make)
* `libgtk-3-dev` (make)
* `inkscape` (make)
* `optipng` (make)
* `parallel` (make)
* `sassc` (make)

#### For Arch based distros (Manjaro / ArchLabs)

* `base-devel` (make)
* `gtk-engine-murrine` (optional) - for gtk2 themes
* `gtk3` (make)
* `inkscape` (make)
* `optipng` (make)
* `parallel` (make)
* `sassc` (make)

### To Build

	git clone --recursive https://github.com/willscreel/yeti.git
	cd yeti
	./build.sh
