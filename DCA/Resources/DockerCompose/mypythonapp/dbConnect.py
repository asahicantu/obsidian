import sys
import os
import time

hostname = sys.argv[1]
username = 'root'
password = 'admin123'
database = 'sys'

# Simple routine to run a query on a database and print the results:
def doQuery( conn ) :
    cur = conn.cursor()
    cur.execute( "SELECT firstname, lastname, address, city  FROM Peoples" )

    for firstname, lastname, address, city in cur.fetchall() :
        print (firstname, lastname, address, city)


print ("Using mysql connector")

import mysql.connector
myConnection = mysql.connector.connect( host=hostname, user=username, passwd=password, db=database )
doQuery( myConnection )
myConnection.close()