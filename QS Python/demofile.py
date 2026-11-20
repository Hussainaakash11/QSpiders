import sqlite3

with sqlite3.connect('dabbe.db', timeout=10.0) as var:
    cursor = var.cursor()

    # CREATE TABLE
    cursor.execute("""CREATE TABLE IF NOT EXISTS student(
        id INTEGER PRIMARY KEY AUTOINCREMENT, 
        name TEXT NOT NULL, 
        subject TEXT NOT NULL,
        marks INTEGER NOT NULL
    )""")

    # INSERT DATA WAY 1
    cursor.execute("""INSERT OR IGNORE INTO student VALUES(?, ?, ?, ?)""", (101, 'Aakash', 'Math', 95))

    # INSERT DATA WAY 2
    row1 = (102, 'Rohit', 'Science', 90)
    row2 = (103, 'Priya', 'English', 95)
    row3 = (104, 'Anjali', 'History', 88)
    row4 = (105, 'Rahul', 'Geography', 92)
    cursor.executemany("""INSERT OR IGNORE INTO student VALUES(?, ?, ?, ?)""", [row1, row2, row3, row4])

# Read data from the table
cursor.execute("""SELECT * FROM student""")
data = cursor.fetchall()
for row in data:
    print(row)

# Update data in the table
cursor.execute("UPDATE student SET subject = ? WHERE subject = ?", ('English', 'Hindi'))

# Delete data from the table
cursor.execute("DELETE FROM student WHERE marks < ?", (90,))

var.commit()
var.close()