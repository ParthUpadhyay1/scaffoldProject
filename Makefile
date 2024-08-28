install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py

lint:
	pylint --disable=R,C scaffle.py

test:
	python -m pytest -vv --cov=scaffle test_scaffle.py

all: install lint test