# ZSH
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mkdir -p ~/.antigen/
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > ~/.antigen/antigen.zsh
cp .zshrc ~/.zshrc

# iTERM2
brew cask install iterm2
curl -L "https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Dark.itermcolors" > ~/Downloads/SolarizedDark.itermcolors

# SPACEMACS
rm -rf ~/.emacs.d
rm -rf ~/.emacs
brew tap d12frosted/emacs-plus
brew install emacs-plus --with-cocoa --with-gnutls --with-librsvg --with-imagemagick --with-spacemacs-icon
brew linkapps
cp .spacemacs ~/.spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# NEOVIM
brew tap neovim/neovim
brew install --HEAD neovim
cp .nvimrc ~/.nvimrc

# DOCKER
echo ""
echo "**** DON'T FORGET TO INSTALL DOCKER FOR MAC ****"
echo "https://docs.docker.com/docker-for-mac"
