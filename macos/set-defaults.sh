# Sets reasonable OS X defaults.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.macos
#
# Run ./set-defaults.sh and you'll be good to go.
#
# more information about other settings can be found:
# 	http://secrets.blacktree.com
#

##
# General
##

# Menu bar: show TextInput, Displays, User, etc.
defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Displays.menu" "/System/Library/CoreServices/Menu Extras/TimeMachine.menu" "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Volume.menu" "/System/Library/CoreServices/Menu Extras/TextInput.menu" "/System/Library/CoreServices/Menu Extras/Battery.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu" "/System/Library/CoreServices/Menu Extras/User.menu"

# Set the clock settings (System Preferences → Date & Time → Clock)
defaults write com.apple.menuextra.clock DateFormat -string "EEE, MMM d I:mm a"
defaults write com.apple.menuextra.clock FlashDateSeparators -bool false
defaults write com.apple.menuextra.clock IsAnalog -bool false

# Enable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool true
defaults write NSGlobalDomain NSSpellCheckerAutomaticallyIdentifiesLanguages -bool true

##
# Trackpad, mouse, keyboard, Bluetooth accessories, and input
##

# Trackpad app exposé swipe down
defaults write com.apple.dock showAppExposeGestureEnabled -bool true

# Magic Mouse: enable 2nd mouse click (System Preferences → Mouse)
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode -string "TwoButton"

# Enable full keyboard access for all controls (System Preferences → Keyboard → Keyboard Shortcuts)
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate (System Preferences → Keyboard)
defaults write NSGlobalDomain KeyRepeat -int 5
#defaults write NSGlobalDomain InitialKeyRepeat -int 20

# Set language and text formats (System Preferences → Language & Text)
defaults write NSGlobalDomain AppleLanguages -array "en-CA" "en";
defaults write NSGlobalDomain AppleLocale -string "en_US@currency=USD"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# Set system time to HH:mm (24h format)
/usr/libexec/PlistBuddy -c 'Add :AppleICUTimeFormatStrings dict' ~/Library/Preferences/.GlobalPreferences.plist
/usr/libexec/PlistBuddy -c 'Add :AppleICUTimeFormatStrings:1 string "HH:mm"' ~/Library/Preferences/.GlobalPreferences.plist
/usr/libexec/PlistBuddy -c 'Add :AppleICUTimeFormatStrings:2 string "HH:mm:ss"' ~/Library/Preferences/.GlobalPreferences.plist
/usr/libexec/PlistBuddy -c 'Add :AppleICUTimeFormatStrings:3 string "HH:mm:ss z"' ~/Library/Preferences/.GlobalPreferences.plist
/usr/libexec/PlistBuddy -c 'Add :AppleICUTimeFormatStrings:4 string "HH:mm:ss zzzz"' ~/Library/Preferences/.GlobalPreferences.plist

##
# Dock
##

# Minimize to application (System Preferences → Dock)
defaults write com.apple.dock minimize-to-application -bool true;

# Magnification and sizes
defaults write com.apple.dock magnification -bool true

##
# Finder
##

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Show item info below icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

# Enable snap-to-grid for icons on the desktop and by name on standard view
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy name" ~/Library/Preferences/com.apple.finder.plist

# Use icon view in all Finder windows by default
defaults write com.apple.finder FXPreferredViewStyle -string "icnv"

# Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Open default on my home folder
defaults write com.apple.finder NewWindowTargetPath -string "file://localhost${HOME}"

##
# Address Book
##

# Show first name before last name
defaults write com.apple.AddressBook ABNameDisplay -int 0

# Sort by First name and then Last name
defaults write com.apple.AddressBook ABNameSortingFormat -string "sortingFirstName sortingLastName"

# Show Nickname, JobTitle, Department
defaults write com.apple.AddressBook ABNicknameVisible -int 1
defaults write com.apple.AddressBook ABJobTitleVisible -int 1
defaults write com.apple.AddressBook ABDepartmentVisible -int 1

# Show Related Names, Birthday and other dates on templates
defaults write com.apple.AddressBook ABBirthDayVisible -int 1
defaults write com.apple.AddressBook ABDatesVisible -int 1
defaults write com.apple.AddressBook ABRelatedRecordsVisible -int 1
defaults write com.apple.AddressBook ABSocialProfilesVisible -bool true

##
# Better Touch Tool
##
defaults write launchOnStartup -bool true

##
# iCal
##

# timezone support active by default
defaults write com.apple.iCal "TimeZone support enabled" -bool true
# show event times
defaults write com.apple.iCal "Show time in Month View" -bool true
# show week numbers by default
defaults write com.apple.iCal "Show Week Numbers" -bool true

# birthdays off
defaults write com.apple.iCal "display birthdays calendar" -bool false;

##
# Safari & WebKit
##

# Show status bar
defaults write com.apple.Safari ShowStatusBar -bool true

# Show Tab bar
defaults write com.apple.Safari AlwaysShowTabBar -bool true

# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Don't always restore session after launch on Safari 
defaults write com.apple.Safari AlwaysRestoreSessionAtLaunch -bool false

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Make Safari’s search banners default to Contains instead of Starts With
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

##
# Terminal
##


##
# Kill affected applications
##

for app in "Dock" "Finder"  \
    "Safari" "SystemUIServer" ; do
    killall "$app" > /dev/null 2>&1
done

echo "Done. Note that some of these changes require a logout/restart to take effect."

