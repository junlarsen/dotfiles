#!/usr/bin/env zsh

install_aws_cli() {
  dotfiles_log "Installing AWS CLIv2 (stable)"
  mkdir -p "$TARGET/awscliv2"
  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "$TARGET/awscliv2/output.zip"
  unzip "$TARGET/awscliv2/output.zip" -d "$TARGET/awscliv2"
  sudo "$TARGET/awscliv2/aws/install"
}

install_docker() {
  dotfiles_log "Installing Docker (stable)"
  sudo apt-get install ca-certificates curl gnupg
  sudo install -m 0755 -d /etc/apt/keyrings
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
  sudo chmod a+r /etc/apt/keyrings/docker.gpg
  echo \
    "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt-get update
  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
  sudo groupadd -f docker
  sudo usermod -aG docker $USER
}

install_packer() {
  dotfiles_log "Installing HashiCorp Packer (stable)"
  curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
  echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
  sudo apt update && sudo apt install packer
}

install_tfenv() {
  dotfiles_log "Installing Terraform Version Manager"
  git clone --depth=1 https://github.com/junlarsen/tfenv ~/source/forks/tfenv
}

install_tflint() {
  dotfiles_log "Installing tflint"
  curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash
}

install_doppler() {
  dotfiles_log "Install Doppler"
  (curl -Ls --tlsv1.2 --proto "=https" --retry 3 https://cli.doppler.com/install.sh || wget -t 3 -qO- https://cli.doppler.com/install.sh) | sudo sh
}

install_graphite() {
  dotfiles_log "Installing Graphite"
  pnpm add -g @withgraphite/graphite-cli@stable
}

dotfiles_install() {
  if [[ $# -eq 0 ]]; then
    dotfiles_log "Zero packages were requested. Exiting..."
    exit 1
  fi

  for p in "$@"
  do
    case $p in
      "aws") install_aws_cli ;;
      "docker") install_docker ;;
      "packer") install_packer ;;
      "tfenv") install_tfenv ;;
      "tflint") install_tflint ;;
      "doppler") install_doppler ;;
      "graphite") install_graphite ;;
      *) dotfiles_log "Requested unknown package $p..." ;;
    esac
  done
}
