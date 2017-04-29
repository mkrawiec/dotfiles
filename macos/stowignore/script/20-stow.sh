declare -r ROOT=`git rev-parse --show-toplevel`

pushd $ROOT/config
stow --adopt --target $HOME $(ls)
git checkout .
popd
