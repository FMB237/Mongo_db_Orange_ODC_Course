# Orange_Digital_Center Mongo DB course
# Period : From 21 January 2026 to 23 Januaty 2026
# Day1 
This is mainly a Course i'm passing the orange digital center in Douala 
In this doc i will explain all what i will learn for this 3 days in ODC Douala Cameroon 

# Let me Introduce myself to evetybody in class .
Okay introductions
In class we have the Following persons
# Mongo DB classmates

1. Junior  from Polytech Like me but Science of Energineering he has a Master degree
2. Fred which is second year student Studing Computer science at the University of Douala
3. Zidane 
4. Cecile in the Big man in the class
5. Sharron
6. 
So we are actually 7 in hall 

Okay i will add other people later
Brief the instructor is late but it is not bad 
# Questions i should ask myself during this  course
1. What is mongoDB ??
2. Key concepts  learned 
3. Tools Used
4. Command examples
5. Difficulties


Okay i ask that and it was just a simple issue to Old man reacted 
MongoDB is a non-relational Database that means it is a NOSQL database
# 🟢 What is MongoDB?
MongoDB is a NoSQL database used to store data in a flexible, JSON-like format instead of tables and rows.
The said MongoDB is a highly scalable Database From Upwork the demand for Mongodb is high 
Here we store data in Json Format 
# Differcent between SQL and NOSQL Database
NOSQL uses document and collections while SQL uses Tables to store data's
In Modern Web app we mainly uses MongoDB as principal Database because it is a highly scalable DB for we can easily add new informatons.
SQL is also heavy since we mainly uses many tables which can be heavy.
In MongoDB a table is call a collection
The Row is the document
The Column are said to Field

After executing the script install_mongodb.sh then we can open a terminal a run the command mongosh
The Mongosh is the command used to access the mongo shell just like the linux bash shell
# Using mongoDB
After typing the command mongosh  we will enter a shell showing you the name test

# TO Create a new Database we gonna use the command  "use dbaname" e.g use Brucedb
This is move you the database own as Brucedb in the terminal shell
To create a new collection we gonna use the command db.collection('users')
This command will create a collection of users inside our Brucedb
We can also do a collection of Items or when of objects,articles for a selling web in fact it just creating a collection in our db
# Use the command Show dbs to show our actual db
In mongodb a database with that does not have data will be consider as empty
Always ensure we are in a database

# Like in SQL we can delect a Database using the command
# db.dropDatabase()
# Use the command db.createCollection("Students")
# To delect a collection we used the command db.collectionname.drop()
Let Insert data into our db our student collections

db.Students.insertOne({ "id":1,"name":"Fouenang","subname":"Miguel Bruce"})
db.Students.insertOne({"age":"22","level":"4"}) This is mainly the second piece of information
Now we have mainly insert 2 pieces of informations in our db collections
To show our insert data we used the command
# db.Students.find() Where students is our collection name 
