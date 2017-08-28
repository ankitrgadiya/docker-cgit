#! /bin/sh

# By default this script enables highlight Ver.2 option, but alpine ships 
# highlight Ver.3 and hence this script needs to be updated

BASENAME="$1"
EXTENSION="${BASENAME##*.}"

[ "${BASENAME}" = "${EXTENSION}" ] && EXTENSION=txt
[ -z "${EXTENSION}" ] && EXTENSION=txt

[ "${BASENAME%%.*}" = "Makefile" ] && EXTENSION=mk

exec highlight --force -f -I -O xhtml -S "$EXTENSION" 2>/dev/null
