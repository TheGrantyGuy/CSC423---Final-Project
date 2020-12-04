import cx_Oracle
import pandas as pd

"""
Some quick start guides:
* cx_Oracle 8: https://cx-oracle.readthedocs.io/en/latest/user_guide/installation.html
* pandas: https://pandas.pydata.org/pandas-docs/stable/user_guide/10min.html
"""
# TODO change path of Oracle Instant Client to yours
cx_Oracle.init_oracle_client(lib_dir = "./instantclient_19_9")

# TODO change credentials
# Connect as user "user" with password "mypass" to the "CSC423" service
# running on lawtech.law.miami.edu
connection = cx_Oracle.connect(
    "user", "mypass", "lawtech.law.miami.edu/CSC_423")
cursor = connection.cursor()

cursor.execute("""
    SELECT registrationNo, tuitionFee, o.sectionNo, courseName
    FROM Courses r, Offerings o
    WHERE r.sectionNo = o.sectionNo AND tuitionFee > 1500
""")
# get column names from cursor
columns = [c[0] for c in cursor.description]
# fetch data
data = cursor.fetchall()
# bring data into a pandas dataframe for easy data transformation
df = pd.DataFrame(data, columns = columns)

print(df) # examine
print(df.columns)
# print(df['FIRST_NAME']) # example to extract a column

cursor.execute("""
    SELECT studentID, first_name, last_name, courseName, o.sectionNo, timeOfDayOffered
    FROM Students s, Offerings o, Courses r
    WHERE s.registrationNo = o.registrationNo AND o.sectionNo = r.sectionNo
""")
# get column names from cursor
columns = [c[0] for c in cursor.description]
# fetch data
data = cursor.fetchall()
# bring data into a pandas dataframe for easy data transformation
df = pd.DataFrame(data, columns = columns)

print(df) # examine
print(df.columns)
# print(df['FIRST_NAME']) # example to extract a column

cursor.execute("""
    SELECT *
    FROM Offerings
    WHERE termsOffered LIKE '25 weeks%'
""")

# get column names from cursor
columns = [c[0] for c in cursor.description]
# fetch data
data = cursor.fetchall()
# bring data into a pandas dataframe for easy data transformation
df = pd.DataFrame(data, columns = columns)

print(df) # examine
print(df.columns)
# print(df['FIRST_NAME']) # example to extract a column

cursor.execute("""
    SELECT t.tutorNo, COUNT(sectionNo) AS numCourses
    FROM Tutors t, Offerings o
    WHERE t.tutorNo = o.tutorNo
    GROUP BY o.tutorNo
""")

# get column names from cursor
columns = [c[0] for c in cursor.description]
# fetch data
data = cursor.fetchall()
# bring data into a pandas dataframe for easy data transformation
df = pd.DataFrame(data, columns = columns)

print(df) # examine
print(df.columns)
# print(df['FIRST_NAME']) # example to extract a column


cursor.execute("""
    SELECT t.tutorNo, first_name, last_name, sectionNo, timeOFDayOffered
FROM Tutors t, Offerings o
WHERE t.tutorNo = o.tutorNo AND (timeOfDayOffered LIKE 'Monday%' OR timeOfDayOffered LIKE 'Wednesday%')
""")

# get column names from cursor
columns = [c[0] for c in cursor.description]
# fetch data
data = cursor.fetchall()
# bring data into a pandas dataframe for easy data transformation
df = pd.DataFrame(data, columns = columns)

print(df) # examine
print(df.columns)
# print(df['FIRST_NAME']) # example to extract a column

cursor.close()
