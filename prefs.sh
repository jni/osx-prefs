
###############
# screenshots #
###############

# put screenshots in a desktop subfolder
mkdir -p $HOME/Desktop/screenshots
defaults write com.apple.screencapture location $HOME/Desktop/screenshots

# when taking a screenshot of a window, don't capture the shadow
defaults write com.apple.screencapture disable-shadow -bool true
# (to enable before logout, run `killall SystemUIServer`)

##########
# iCloud #
##########

# don't put documents in iCloud by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false


############
# iMessage #
############

# don't automatically convert emoticons to emoji
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticEmojiSubstitutionEnablediMessage" -bool false


####################
# Power management #
####################

# Set the deep sleep delay to 24h instead of 1h10min:
sudo pmset -a standbydelay 86400

############
# Security #
############

# Disable checking to open newly downloaded apps
defaults write com.apple.LaunchServices LSQuarantine -bool false

######
# UI #
######

# Disable Notification Center and remove the menu bar icon
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null


#########
# Input #
#########

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false


##########
# Finder #
##########

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Use expanded save menu by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
