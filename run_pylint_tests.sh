#!/bin/sh


# $ADDONS_PATH
# $EXIT_ZERO
# $RY
set +e


echo "-------------------------------------------------"
echo
echo "TEST: pylint"
pylint --rcfile=/root/.pylintrc --load-plugins=pylint_odoo --exit-zero -ry -e epylint $(ls -ad $ADDONS_PATH/*/ | sed s'/.$//'| xargs echo)

exit $?

