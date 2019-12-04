#!/bin/sh

set +e

green() {
  printf  "\\e[32m${1}\\e[0m"
}

red() {
  printf  "\\e[31m${1}\\e[0m"
}

MODULES=$(find "$ADDONS_PATH"/* -maxdepth 0 -type d -and -not -path \*/.\* -print0 | xargs -0 echo)

echo "-------------------------------------------------"
echo "Modules to test :"
green "$MODULES"
echo
if [ -z "$MODULES" ]
then
	red "Modules list is empty"
	exit 1
fi

pylint --rcfile=/root/.pylintrc --load-plugins=pylint_odoo --exit-zero -ry -e epylint $MODULES

exit $?

