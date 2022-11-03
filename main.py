import os
import csv
import pymysql.cursors
from pathlib import Path


Path("./files/").mkdir(parents=True, exist_ok=True)


# Connect to the database
connection = pymysql.connect(host='localhost',
                             user='root',
                             password='123',
                             database='food_database',
                             cursorclass=pymysql.cursors.DictCursor,
                             local_infile=True)


# Checking for conformity on CSV files
for filename in os.listdir('./files/'):
    print(f"Checking {filename}")

    i = 1
    flag = None
    bad = False
    with open('./files/' + filename, newline='', encoding="utf-8") as check_file:
        for line in csv.reader(check_file, delimiter=',', quotechar='"'):
            i += 1

            if flag is None:
                flag = len(line)

            if len(line) != flag:
                print(f"{filename} -> index:{i}")
                bad = True

    if bad:
        print("Hey, some file are bad! Check those!\nAborting...")
        exit(-1)


print("All good on those files, going on!")


# Importing new files
with connection:
    print("Resetting database...", end="", flush=True)
    ddl = "".join(open("ddl.sql", 'r').readlines()).split(";")
    for sql in ddl:
        if len(sql):
            with connection.cursor() as cursor:
                # print(sql)
                cursor.execute(sql, ())
                result = cursor.fetchone()
                # print(result)
                print('.', end="", flush=True)
    print(" Done!")

    for filename in os.listdir('./files/'):
        table_name = filename.replace('.csv', '')
        path = (os.getcwd() + '\\files\\' + filename).replace('\\', '\\\\')

        print(f"{table_name} <== {path}")

        with connection.cursor() as cursor:
            # Read a single record
            sql = f"TRUNCATE TABLE {table_name};"
            cursor.execute(sql, ())
            result = cursor.fetchone()

            sql = f"""LOAD DATA INFILE '{path}'
                    INTO TABLE {table_name} 
                    FIELDS TERMINATED BY ','
                    ENCLOSED BY '"'
                    IGNORE 1 LINES;"""

            cursor.execute(sql, ())
            result = cursor.fetchone()

        connection.commit()