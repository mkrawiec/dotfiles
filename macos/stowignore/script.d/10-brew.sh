declare -r ROOT=$1

# get brew itself
if ! [ -x "$(command -v brew)" ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install brewfile bundle
pushd $ROOT
    brew bundle
popd
