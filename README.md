# Calls DBT technical challenge

This repo contains the beginnings of a [dbt project](https://www.getdbt.com/docs/) for the Octopus Electric Vehicles
 dbt technical challenge. More details about the challenge are provided in the PDF.

## Installation
This project uses [pipenv](https://pipenv.pypa.io/en/latest/). If you don't have it, you can install it by runnning `pip install pipenv`.

Run `make install` to install the requirements - both the Python dependencies including dbt itself,
and a dbt package [dbt-utils](https://github.com/dbt-labs/dbt-utils).

Run `make deps` to install dbt dependencies.

## Use
The base data for the project is included in the `data/ops_data.db` SQLite
database.

`make build` builds the [dbt project](https://www.getdbt.com/docs/), which means creating tables
for each of the models defined in the `models/` directory, and running any tests defined in the
`schema.yml` files. You should run `make build` to populate the database with the staging tables
(cleaned up versions of each of the source tables). Descriptions of the tables and some of their
columns can be found in the `models/staging/schema.yml` file.
