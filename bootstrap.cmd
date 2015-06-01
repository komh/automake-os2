extproc sh

(cd t && attrib -r "*")

export MAKESHELL=/bin/sh

./bootstrap.sh "$@"
