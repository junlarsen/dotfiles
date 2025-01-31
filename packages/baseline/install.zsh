#!/usr/bin/env zsh

install_chrome() {
  dotfiles_log "Installing Google Chrome (stable)"
  sudo apt install -y libu2f-udev
  
  curl -L --compressed "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" -o "$TARGET/chrome.deb"
  sudo dpkg -i "$TARGET/chrome.deb"
}

install_1password() {
  dotfiles_log "Installing 1Password Desktop (stable)"
  curl -L --compressed "https://downloads.1password.com/linux/debian/amd64/stable/1password-latest.deb" -o "$TARGET/1password.deb"
  sudo dpkg -i "$TARGET/1password.deb"
}

install_discord() {
  dotfiles_log "Installing Discord (stable)"
  curl -L --compressed "https://discord.com/api/download?platform=linux&format=deb" -o "$TARGET/discord.deb"
  sudo dpkg -i "$TARGET/discord.deb"
}

install_slack() {
  dotfiles_log "Installing Slack (stable)"
  curl -L --compressed "https://downloads.slack-edge.com/desktop-releases/linux/x64/4.38.125/slack-desktop-4.38.125-amd64.deb" -o "$TARGET/slack.deb"
  sudo dpkg -i "$TARGET/slack.deb"
}

install_chrome
install_1password
install_discord
install_slack
