# py-food-database-mariadb

A simple MariaDB importer for FoodData Central db files.

## Requirements

- `python3`
- `virtualenv` (recommended)
- An internet connection

## Usage

Download [this file](https://fdc.nal.usda.gov/fdc-datasets/FoodData_Central_csv_2022-10-28.zip) and put all the `.csv` files inside the zip file just downloaded in a folder called `files/` on the root of the project's directory. Then,

```bash
python3 -m pip install virtualenv
python3 -m virtualenv venv
source ./venv/bin/activate
python main.py
```

Your records will be available in the MariaDB database of the configured database credentials in the `main.py` file.

## License

This software is licensed under the MIT License. See LICENSE file for more information.

The data provided is currently gathered from [FoodData Central](https://fdc.nal.usda.gov/download-datasets.html), support them from the original source if you can, and remember to quote them if you use this data!