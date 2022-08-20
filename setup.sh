# install homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install homebrew formulae
brew install git

# install homebrew casks
xargs brew install < apps.txt

# setup bash_profile and other dot files
brew install bash
brew install vcprompt
brew install fortune
brew install cowsay

cd ~

curl -O https://raw.githubusercontent.com/Laslo89/fresh-start/master/.bash_profile

# curl -O https://github.com/w3cj/dotfiles/blob/master/.gitignore

# configure git

git config --global user.name laslo89

git config --global user.email matze_lebt@gmx.de

git config --global core.editor nano

# install node version manager

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/HEAD/install.sh | bash

nvm install --lts
brew install yarn
# global npm installs

npm install -g lite-server

# create projects folder

mkdir ~/projects

