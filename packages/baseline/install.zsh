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

install_jetbrains_toolbox() {
  dotfiles_log "Installing JetBrains Toolbox"
  sudo apt-get install libfuse2
  mkdir -p "$TARGET/toolbox"
  curl 'https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-1.27.3.14493.tar.gz' --compressed -LO "$TARGET/toolbox/jetbrains-toolbox.tar.gz"
  tar -xzf "$TARGET/toolbox/jetbrains-toolbox.tar.gz" -C "$TARGET/toolbox"
}

install_wezterm() {
  dotfiles_log "Installing WezTerm"
  curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
  echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list

  sudo apt update
  sudo apt install wezterm
}

install_chrome
install_1password
install_discord
install_slack
install_jetbrains_toolbox
install_wezterm
