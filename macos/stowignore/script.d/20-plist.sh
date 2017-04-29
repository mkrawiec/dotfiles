shopt -s nullglob
declare -r ROOT=$1

for f in $ROOT/exported/*.plist; do
	defaults import $(basename $f .plist) $f
done
