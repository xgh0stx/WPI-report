"""
filename: extract_sample_data.py
description: a script to extract sample data from mysql db
version: 1.0
dependencies: python-mysql.connector 

"""


import mysql.connector
import csv

UNAME=''

PWD=''

DB=''

FILENAME='/tmp/data.csv'

QUERY='select * from events limit 10'

cnx = mysql.connector.connect(user= UNAME, password= PWD, database= DB)

dump_writer = csv.writer(open(FILENAME, 'w'), delimiter=',', quotechar="\"")

cursor = cnx.cursor()

cursor.execute(QUERY)


for row in cursor.fetchall():
    dump_writer.writerow(row)



cursor.close()
cnx.close()
