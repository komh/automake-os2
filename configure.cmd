extproc sh

d=$(dirname "$0" | tr '\\' /)

n=configure
test -f "$d/$n." || { echo "\`$d/$n' not found !!!"; exit 1; }

opts="
    --prefix=/@unixroot/usr/local
"

"$d/$n" $opts "$@" 2>&1 | tee "$n.log"
