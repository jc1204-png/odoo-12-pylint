FROM python:3.7-alpine

# Run commands as root
USER "root"

COPY ./run_pylint_tests.sh /

RUN chmod +x /run_pylint_tests.sh \
	&& apk --no-cache add \
	gcc \
	git \
	libxml2-dev \
	libxslt-dev \
	musl-dev \
	python-dev \
    && pip3 install --upgrade pylint  \
    && pip3 install --upgrade git+https://github.com/oca/pylint-odoo.git

