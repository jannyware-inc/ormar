#!/bin/sh -e

PACKAGE="docs_src"

PREFIX=""
if [ -d 'venv' ] ; then
    PREFIX="venv/bin/"
fi

set -x

PYTHONPATH=. ${PREFIX}pytest --ignore venv --cov=${PACKAGE} --cov=tests --cov-report=xml --cov-fail-under=100 --cov-report=term-missing docs_src/ "${@}"
