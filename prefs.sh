
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
