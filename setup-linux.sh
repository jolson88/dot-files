#################
# Initial setup
#################
# If on XPS 9570, run the xps tweaks command:
# sudo bash -c "$(curl -fsSL https://raw.githubusercontent.com/JackHack96/dell-xps-9570-ubuntu-respin/master/xps-tweaks.sh)"
# Import id_rsa and id_rsa.pub

#######################
# Install core tools
#######################
sudo apt install keyring
sudo apt install git
sudo apt install build-essential
sudo apt install tmux
sudo apt install autoconf
sudo apt install m4
sudo apt install libncurses5-dev libncursesw5-dev
sudo apt install libssl-dev
sudo apt install libwxgtk3.0-dev

####################
# Shells/Terminals
####################
sudo apt install rxvt-unicode xsel
sudo apt install fish
sudo chsh -s /usr/bin/fish
sudo update-alternatives --set x-terminal-emulator /usr/bin/urxvt

##################################
# Set permissions and import keys
##################################
# Import a public GPG key: `gpg --import public.key
# Import a private GPG key: `gpg --allow-secret-key-import --import private.key
# Use `gpg --list-keys` to find GPG key
# `git config --global user.signingkey FOO` to sign
# `git config --global commit.gpgsign true` to sign everything

############################
# Install dev tools
############################

# Ruby (Blogging/Jekyll)
sudo apt install ruby ruby-dev

# Python (various scripting)
sudo apt install pip3
pip3 install --user pynvim

# Rust
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env
rustup update
rustup component add rustfmt
rustup component add rls rust-analysis rust-src

###################
# Manual steps
###################
echo "Don't forget to import ssh keys and GPG keys"
# chmod 400 ~/.ssh/id_rsa
echo "Now install config files from dot-files and reboot"
