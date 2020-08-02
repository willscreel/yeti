#!/bin/bash

# set theme name
THEME_NAME="yeti"

# set colors
BASE_COLOR="292d31"
DARK_BASE_COLOR="202326"
TEXT_COLOR="9ba8bb"
SELECTED_COLOR_01="434950"
SELECTED_COLOR_02="4b8bad"
SELECTED_COLOR_03="4b8bad"
BORDER_COLOR="1c1e21"

# choose openbox theme
# options are found in openbox/themes
OB_THEME="yeti"
BORDER_WIDTH=4

# choose metacity theme
# options are found in metacity/themes
METACITY_THEME="yeti"

# choose xfwm theme
# options are found in xfwm/themes
XFWM_THEME="yeti"

######################################
# enable "lith" variant

#THEME_NAME="yeti-lith"

#SELECTED_COLOR_02="bc4b4f"
#SELECTED_COLOR_03="bc4b4f"

#sed -i 's/\$selected_fg_color:\ \$text_color;/\$selected_fg_color:\ #000000;/g' sass/_colors.scss
#sed -i 's/\$selected_bg_color:\ #5294e2;/\$selected_bg_color:\ darken(\$base_color,\ 4%);/g' sass/_colors.scss

#sed -i 's/menu\.items\.active\.bg\.color:\ #5294E2/menu\.items\.active\.bg\.color:\ #menu_items_active_bg_color/g' openbox/themes/$OB_THEME/themerc
#sed -i 's/osd\.hilight\.bg\.color:\ #5294E2/osd\.hilight\.bg\.color:\ #osd_hilight_bg_color/g' openbox/themes/$OB_THEME/themerc

#sed -i "s/ffffff/$SELECTED_COLOR_02/g" openbox/themes/$OB_THEME/themerc
#sed -i "s/menu_items_active_bg_color/$DARK_BASE_COLOR/g" openbox/themes/$OB_THEME/themerc
#sed -i "s/osd_hilight_bg_color/$SELECTED_COLOR_02/g" openbox/themes/$OB_THEME/themerc

######################################

rm -rf $HOME/.local/share/themes/$THEME_NAME

cd arc-theme

# gtk+ replacements
sed -i "s/Arc-Dark-solid/$THEME_NAME/g" configure.ac 
sed -i "s/Arc-Dark/$THEME_NAME/g" common/index/dark/index.theme
sed -i "s/ffffff/$TEXT_COLOR/g" common/gtk-3.0/3.24/assets.svg
sed -i "s/5294e2/$SELECTED_COLOR_01/g" common/gtk-3.0/3.24/assets.svg
sed -i "s/cc575d/$TEXT_COLOR/g" common/gtk-3.0/3.24/assets.svg
sed -i "s/d7787d/$SELECTED_COLOR_02/g" common/gtk-3.0/3.24/assets.svg
sed -i "s/be3841/$SELECTED_COLOR_01/g" common/gtk-3.0/3.24/assets.svg
sed -i "s/2d323d/$BASE_COLOR/g" common/gtk-3.0/3.24/assets.svg
sed -i "s/262934/$TEXT_COLOR/g" common/gtk-3.0/3.24/assets.svg
sed -i "s/2b303b/$BASE_COLOR/g" common/gtk-3.0/3.24/assets.svg
sed -i "s/658280/$TEXT_COLOR/g" ../gtk-2.0/gtkrc
sed -i "s/110005/$BASE_COLOR/g" ../gtk-2.0/gtkrc
sed -i "s/404552/$BASE_COLOR/g" ../sass/_colors.scss
sed -i "s/D3DAE3/$TEXT_COLOR/g" ../sass/_colors.scss
sed -i "s/5294e2/$SELECTED_COLOR_01/g" ../sass/_colors.scss
sed -i "s/000000/$SELECTED_COLOR_02/g" ../sass/_colors.scss

# openbox replacements
sed -i "s/2d3036/$DARK_BASE_COLOR/g" ../openbox/themes/$OB_THEME/themerc
sed -i "s/2f343f/$DARK_BASE_COLOR/g" ../openbox/themes/$OB_THEME/themerc
sed -i "s/D3DAE3/$TEXT_COLOR/g" ../openbox/themes/$OB_THEME/themerc
sed -i "s/7F8388/$SELECTED_COLOR_01/g" ../openbox/themes/$OB_THEME/themerc
sed -i "s/5294E2/$SELECTED_COLOR_01/g" ../openbox/themes/$OB_THEME/themerc
sed -i "s/afb8c5/$SELECTED_COLOR_03/g" ../openbox/themes/$OB_THEME/themerc
sed -i "s/1F2328/$SELECTED_COLOR_01/g" ../openbox/themes/$OB_THEME/themerc
sed -i "s/aeb0b6/$DARK_BASE_COLOR/g" ../openbox/themes/$OB_THEME/themerc
sed -i "s/a8adb5/$TEXT_COLOR/g" ../openbox/themes/$OB_THEME/themerc
sed -i "s/ffffff/$TEXT_COLOR/g" ../openbox/themes/$OB_THEME/themerc
sed -i "s/454a54/$BASE_COLOR/g" ../openbox/themes/$OB_THEME/themerc
sed -i "s/000000/$DARK_BASE_COLOR/g" ../openbox/themes/$OB_THEME/themerc
sed -i "s/menu_separator_color/$SELECTED_COLOR_01/g" ../openbox/themes/$OB_THEME/themerc
sed -i "s/menu_title_bg_color/$BASE_COLOR/g" ../openbox/themes/$OB_THEME/themerc
sed -i "s/border_width/$BORDER_WIDTH/g" ../openbox/themes/$OB_THEME/themerc
sed -i "s/border_color/$BORDER_COLOR/g" ../openbox/themes/$OB_THEME/themerc

#xfce-notify replacements
sed -i "s/22373f/$BASE_COLOR/g" ../xfce-notify-4.0/gtk.css
sed -i "s/bc4b4f/$SELECTED_COLOR_02/g" ../xfce-notify-4.0/gtk.css
sed -i "s/152126/$DARK_BASE_COLOR/g" ../xfce-notify-4.0/gtk.css
sed -i "s/ffffff/$TEXT_COLOR/g" ../xfce-notify-4.0/gtk.css
sed -i "s/d3dae3/$TEXT_COLOR/g" ../xfce-notify-4.0/gtk.css
sed -i "s/22373f/$BASE_COLOR/g" ../xfce-notify-4.0/gtk.css
sed -i "s/273B43/$BASE_COLOR/g" ../xfce-notify-4.0/gtk.css
sed -i "s/ff0000/$TEXT_COLOR/g" ../xfce-notify-4.0/gtk.css
sed -i "s/808080/$BASE_COLOR/g" ../xfce-notify-4.0/gtk.css

#metacity replacements
sed -i "s/afb8c6/$TEXT_COLOR/g" ../metacity/themes/$METACITY_THEME/metacity-theme-1-dark.xml
sed -i "s/8a939f/$SELECTED_COLOR_01/g" ../metacity/themes/$METACITY_THEME/metacity-theme-1-dark.xml
sed -i "s/2f343f/$BASE_COLOR/g" ../metacity/themes/$METACITY_THEME/metacity-theme-1-dark.xml
sed -i "s/cc575d/$TEXT_COLOR/g" ../metacity/themes/$METACITY_THEME/metacity-theme-1-dark.xml
sed -i "s/d7787d/$SELECTED_COLOR_02/g" ../metacity/themes/$METACITY_THEME/metacity-theme-1-dark.xml
sed -i "s/be3841/$SELECTED_COLOR_01/g" ../metacity/themes/$METACITY_THEME/metacity-theme-1-dark.xml
sed -i "s/5294e2/$SELECTED_COLOR_01/g" ../metacity/themes/$METACITY_THEME/metacity-theme-1-dark.xml
sed -i "s/666A74/$SELECTED_COLOR_01/g" ../metacity/themes/$METACITY_THEME/metacity-theme-1-dark.xml
sed -i "s/active_bg_icon/$TEXT_COLOR/g" ../metacity/themes/$METACITY_THEME/metacity-theme-1-dark.xml

sed -i "s/afb8c6/$TEXT_COLOR/g" ../metacity/themes/$METACITY_THEME/metacity-theme-2-dark.xml
sed -i "s/8a939f/$SELECTED_COLOR_01/g" ../metacity/themes/$METACITY_THEME/metacity-theme-2-dark.xml
sed -i "s/2f343f/$BASE_COLOR/g" ../metacity/themes/$METACITY_THEME/metacity-theme-2-dark.xml
sed -i "s/cc575d/$TEXT_COLOR/g" ../metacity/themes/$METACITY_THEME/metacity-theme-2-dark.xml
sed -i "s/d7787d/$SELECTED_COLOR_02/g" ../metacity/themes/$METACITY_THEME/metacity-theme-2-dark.xml
sed -i "s/be3841/$SELECTED_COLOR_01/g" ../metacity/themes/$METACITY_THEME/metacity-theme-2-dark.xml
sed -i "s/5294e2/$SELECTED_COLOR_01/g" ../metacity/themes/$METACITY_THEME/metacity-theme-2-dark.xml
sed -i "s/666A74/$SELECTED_COLOR_01/g" ../metacity/themes/$METACITY_THEME/metacity-theme-2-dark.xml
sed -i "s/active_bg_icon/$TEXT_COLOR/g" ../metacity/themes/$METACITY_THEME/metacity-theme-2-dark.xml

#xfwm replacements
sed -i "s/afb8c5/$TEXT_COLOR/g" ../xfwm/themes/$XFWM_THEME/themerc
sed -i "s/2f343b/$BASE_COLOR/g" ../xfwm/themes/$XFWM_THEME/themerc
sed -i "s/808791/$SELECTED_COLOR_01/g" ../xfwm/themes/$XFWM_THEME/themerc

sed -i "s/2f343f/$BASE_COLOR/g" ../xfwm/themes/$XFWM_THEME/assets.svg
sed -i "s/21252b/$BORDER_COLOR/g" ../xfwm/themes/$XFWM_THEME/assets.svg
sed -i "s/353b48/$BORDER_COLOR/g" ../xfwm/themes/$XFWM_THEME/assets.svg
sed -i "s/cc575d/$TEXT_COLOR/g" ../xfwm/themes/$XFWM_THEME/assets.svg
sed -i "s/d7787d/$SELECTED_COLOR_02/g" ../xfwm/themes/$XFWM_THEME/assets.svg
sed -i "s/be3841/$SELECTED_COLOR_01/g" ../xfwm/themes/$XFWM_THEME/assets.svg
sed -i "s/666a74/$SELECTED_COLOR_01/g" ../xfwm/themes/$XFWM_THEME/assets.svg
sed -i "s/90939b/$SELECTED_COLOR_01/g" ../xfwm/themes/$XFWM_THEME/assets.svg
sed -i "s/5294e2/$SELECTED_COLOR_01/g" ../xfwm/themes/$XFWM_THEME/assets.svg
sed -i "s/ffffff/$TEXT_COLOR/g" ../xfwm/themes/$XFWM_THEME/assets.svg
sed -i "s/a4aab7/$SELECTED_COLOR_01/g" ../xfwm/themes/$XFWM_THEME/assets.svg
sed -i "s/797d87/$SELECTED_COLOR_01/g" ../xfwm/themes/$XFWM_THEME/assets.svg

cp ../sass/* common/gtk-3.0/3.24/sass
cp ../openbox/themes/$OB_THEME/* common/openbox/Arc-Dark/openbox-3
cp ../metacity/themes/$METACITY_THEME/* common/metacity-1
cp ../xfwm/themes/$XFWM_THEME/* common/xfwm4/dark

./autogen.sh --prefix=$HOME/.local \
	--disable-transparency \
	--disable-light \
	--disable-lighter \
	--disable-darker \
	--disable-cinnamon \
	--disable-gnome-shell \
	--disable-gtk2 \
	--disable-unity \
	--disable-plank

make install

rm $HOME/.local/share/themes/$THEME_NAME/metacity-1/metacity-theme-3.xml
cp -r ../gtk-2.0 $HOME/.local/share/themes/$THEME_NAME
cp -r ../xfce-notify-4.0 $HOME/.local/share/themes/$THEME_NAME

git clean -fdx
git reset --hard
cd ../
git clean -fdx
git reset --hard
