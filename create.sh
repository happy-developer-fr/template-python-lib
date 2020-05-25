#!/bin/bash
python3 -m venv ./.venv && \
source ./.venv/bin/activate && \
pip install pytest pylint flake8 flake8-bandit flake8-black flake8-bugbear flake8-import-order && \
pip freeze | grep -v "pkg-resources" > requirements.txt && \
make
