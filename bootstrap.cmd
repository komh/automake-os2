extproc sh

(cd t && attrib -r "*")

export COMSPEC=/bin/sh

./bootstrap.sh "$@"
