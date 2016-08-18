# Install Homebrew
echo "Installing Homebrew and initial tools..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git
brew install binutils
brew install wget

# Configure git user
echo "Configuring git user..."
git config --global user.name "Jason Olson"

# Get initial key for Github
echo "Setting up new Github SSH keys"
ssh-keygen -t rsa -b 4096 -C "jolson88@outlook.com"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
echo "SSH public key:"
cat ~/.ssh/id_rsa.pub
pbcopy < ~/.ssh/id_rsa.pub
echo "Public key copied to clipboard. Add to github"

echo "Press any key once the new public key has been added to your Github account..."
read -n 1 -s

# Bootstrap source directory
echo "Bootstrapping personal source directory"
mkdir ~/source
cd ~/source
mkdir personal
cd personal

echo "Cloning personal repos from Github"
git clone git@github.com:jolson88/dev-tools.git dev-tools
git clone git@github.com:jolson88/notes.git notes
git clone git@github.com:jolson88/jolson88.github.io.git blog
