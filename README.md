<<<<<<< HEAD
[![Project Status](http://opensource.box.com/badges/active.svg)](http://opensource.box.com/badges)
=======
# odoo-12-pylint
> Run pylint on odoo modules
> docker odoo pylint
>>>>>>> 5b7e3755809902b7e0b74177e868b33337c545e1

{Container with pylint}
==================================
{pylint odoo modules}


## Usage

- upload .pylintrc file to .config/ directory on the repo

### Bitbucket pipeline

```shell
- docker pull jc1204/odoo-12-pylint:latest
- docker run -u root --volume $BITBUCKET_CLONE_DIR:/mnt/odoo/addons --volume $BITBUCKET_CLONE_DIR/.config:/root --env ADDONS_PATH=/mnt/odoo/addons jc1204/odoo-12-pylint:latest /run_pylint_tests.sh
```

### Travis ci
```shell
- docker pull jc1204/odoo-12-pylint:latest
- docker run -ti --rm -u root --volume $TRAVIS_BUILD_DIR:/mnt/odoo/addons --volume $TRAVIS_BUILD_DIR/.config:/root --env ADDONS_PATH=/mnt/odoo/addons jc1204/odoo-12-pylint:latest /run_pylint_tests.sh
```

