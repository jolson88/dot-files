#################
# Initial setup
#################
# If on XPS 9570, run the xps tweaks command:
# sudo bash -c "$(curl -fsSL https://raw.githubusercontent.com/JackHack96/dell-xps-9570-ubuntu-respin/master/xps-tweaks.sh)"
# Import id_rsa and id_rsa.pub

# If on Chromebook, remap search key to control key
# xmodmap search.xmodmap

sudo apt update
sudo apt install software-properties-common
sudo apt update
sudo add-apt-repository ppa:jonathonf/vim
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update

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
sudo apt install vim
sudo apt install llvm_defaults
sudo apt install python3.9
sudo apt install python3.9-dev
sudo apt install snapd
sudo apt install keychain

####################
# Shells/Terminals
####################
sudo apt install xsel
sudo apt install fish
sudo chsh -s /usr/bin/fish

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

# Python (various scripting)
sudo apt install pip3
pip3 install --user pynvim
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.9 1

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
echo "Also, don't forget to setup Vundle and YCM for vim"
# https://dane-bulat.medium.com/vim-setting-up-a-build-system-and-code-completion-for-c-and-c-eb263c0a19a1
# chmod 400 ~/.ssh/idrsa
echo "Now install config files from dot-files and reboot"
echo "Run 'sudo snap install cmake --classic after reboot'"

