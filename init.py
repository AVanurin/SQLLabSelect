import sqlite3

conn = sqlite3.connect("school_v1.sqlite3")
c = conn.cursor()

c.executescript(open("SchoolShema.sql").read())

print(c.fetchall())

conn.close()