#!/bin/sh

ME=`whoami`
SUBLIME_PREFERENCES_SOURCE_FOLDER="${MY_DIR}/files/sublime_settings"
SUBLIME_PREFERENCES_DESTINATION_FOLDER="/Users/$ME/Library/Application Support/Sublime Text 3/Packages/User/"

SUBLIME_PACKAGES_DESTINATION_FOLDER="/Users/$ME/Library/Application Support/Sublime Text 3/Installed Packages"
SUBLIME_PACKAGE_CONTROL_URL="https://packagecontrol.io/Package%20Control.sublime-package"

echo "Preparing Sublime Packages and Settings Folders as Needed"

mkdir -p "$SUBLIME_PACKAGES_DESTINATION_FOLDER"
mkdir -p "$SUBLIME_PREFERENCES_DESTINATION_FOLDER"

echo "Downloading and Installing Sublime PackageControl"

curl -L -o "$SUBLIME_PACKAGES_DESTINATION_FOLDER/Package Control.sublime-package" $SUBLIME_PACKAGE_CONTROL_URL

echo "Copying Sublime Text 3 Settings"

echo "Color Themes"

cp "$SUBLIME_PREFERENCES_SOURCE_FOLDER/base16-eighties.dark.tmTheme" "$SUBLIME_PREFERENCES_DESTINATION_FOLDER/"
cp "$SUBLIME_PREFERENCES_SOURCE_FOLDER/RubyTest-Twilight-Spacegray Eighties.tmTheme" "$SUBLIME_PREFERENCES_DESTINATION_FOLDER/"

echo "PackageControl Settings"
cp "$SUBLIME_PREFERENCES_SOURCE_FOLDER/Package Control.sublime-settings" "$SUBLIME_PREFERENCES_DESTINATION_FOLDER/"

echo "User Settings"
cp $SUBLIME_PREFERENCES_SOURCE_FOLDER/Preferences.sublime-settings "$SUBLIME_PREFERENCES_DESTINATION_FOLDER"

echo "RubyTest Settings"
cp $SUBLIME_PREFERENCES_SOURCE_FOLDER/RubyTest.sublime-settings "$SUBLIME_PREFERENCES_DESTINATION_FOLDER"

printf "JsPrettier Settings"
cp $SUBLIME_PREFERENCES_SOURCE_FOLDER/JsPrettier.sublime-settings "$SUBLIME_PREFERENCES_DESTINATION_FOLDER"
