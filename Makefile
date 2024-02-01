install: ## Initalise the virtual env installing deps
	pipenv install

deps:
	pipenv run dbt deps --profiles-dir=. --project-dir=./

build:
	pipenv run dbt build --profiles-dir=. --project-dir=./ 
check-connection:
    

compile:
	pip-compile requirements.in
