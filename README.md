# Demo dbt project

## Setup


Run the following commands to set up the environment variables:

```
export MZ_HOST=
export MZ_PASSWORD=
export MZ_USER=
export MZ_CLUSTER=
export MZ_DB=
```

Setup a python virtual environment and install the requirements:

```
python3 -m venv venv
source venv/bin/activate
pip install dbt-materialize
```

## Running the project

To run the project, execute the following command:

```
cd repro
dbt debug
dbt run
```

## Regenerating the models

To regenerate the models:

- Delete all the files in the `models` directory:

```
rm -f repro/models/*.sql
```

- Make any changes to the `view-gen.py` script as needed.
- Run the python script to regenerate the models:

```
python repro/view-gen.py
```
