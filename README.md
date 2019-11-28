# odoo-12-pylint
> Run pylint on odoo modules
> docker odoo pylint

## How to use

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

