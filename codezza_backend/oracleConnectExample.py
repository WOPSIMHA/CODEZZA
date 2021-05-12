import cx_Oracle as oracle

import os

dsn=oracle.makedsn('localhost', 1521, 'codezza')
db=oracle.connect('c##codezza', 'codezza3#')

cursor=db.cursor()
cursor.execute("""select * from t_user""")

row=cursor.fetchall()

for i in row:
    print(i)

cursor.close()
