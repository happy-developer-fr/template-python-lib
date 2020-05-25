default: init lint test

create:
	./create.sh

init:
	pip install -r requirements.txt

test:
	pytest

freeze:
	pip freeze | grep -v "pkg-resources" > requirements.txt

flake8:
	flake8 src/

pylint:
	pylint --rcfile standard.rc src/

black:
	black .

lint: black flake8 pylint

