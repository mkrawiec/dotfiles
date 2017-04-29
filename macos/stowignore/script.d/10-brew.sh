declare -r ROOT=$1

# get brew itself
if ! [ -x "$(command -v brew)" ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install packages required for scripts to work
brew install stow cask
brew tap caskroom/fonts

# install packages listed in config files
brew install $(cat $ROOT/brew.list)
brew cask install $(cat $ROOT/cask.list)

