# yeti

yeti is a build system to generate a dark, bunsenlabs version of arc-theme.

![A screenshot of the theme](https://i.imgur.com/ACFkM10.png)

### Dependencies to Build

#### For Debian based distros (bunsenlabs)

* `build-essential` (make)
* `gtk2-engines-murrine` (optional) - for gtk2 themes
* `autoconf` (make)
* `automake` (make)
* `libgtk-3-dev` (make)
* `inkscape` (make)
* `optipng` (make)
* `parallel` (make)
* `sassc` (make)

#### For Arch based distros (archlabs)

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
