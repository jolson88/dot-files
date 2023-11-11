# ZSH
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mkdir -p ~/.antigen/
curl -L git.io/antigen > ~/.antigen/antigen.zsh

# iTERM2
brew cask install iterm2
curl -L "https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Dark.itermcolors" > ~/Downloads/SolarizedDark.itermcolors

# SPACEMACS
rm -rf ~/.emacs.d
rm -rf ~/.emacs
brew tap d12frosted/emacs-plus
brew install emacs-plus --with-cocoa --with-gnutls --with-librsvg --with-imagemagick --with-spacemacs-icon
brew linkapps
ln -s /Users/jolson/source/personal/dev-tools/.spacemacs /Users/jolson/.spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# NEOVIM
brew tap neovim/neovim
brew install --HEAD neovim
ln -s /Users/jolson/source/personal/dev-tools/.nvimrc /Users/jolson/.config/nvim/init.vim
ln -s /Users/jolson/source/personal/dev-tools/my-snippets /Users/jolson/.config/nvim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
pip install --user neovim
git clone https://github.com/powerline/fonts
cd fonts
./install.sh

# TMUX
brew install tmux
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack
ln -s /Users/jolson/source/personal/dev-tools/.tmux.conf /Users/jolson/.tmux.conf

# DOCKER
echo ""
echo "**** DON'T FORGET TO INSTALL DOCKER FOR MAC ****"
echo "https://docs.docker.com/docker-for-mac"
