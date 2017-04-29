shopt -s nullglob
declare -r ROOT=`git rev-parse --show-toplevel`

for f in $ROOT/exported/*.plist; do
	defaults import $(basename $f .plist) $f
done
