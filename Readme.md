# 📘 MongoDB Bootcamp -- Orange Digital Center Douala

**Participant:** Miguel Fouenang\
**Location:** Orange Digital Center, Douala -- Cameroon\
**Duration:** 21 January 2026 → 23 January 2026\
**Topic:** MongoDB & NoSQL Databases

------------------------------------------------------------------------

## 🎯 Bootcamp Objective

This bootcamp introduced the fundamentals of **MongoDB**, a leading
**NoSQL database**, and focused on practical database operations used in
modern web and backend development.

The goal was to understand:

-   How NoSQL differs from SQL databases\
-   How MongoDB stores data\
-   How to perform CRUD operations\
-   How to query and update documents\
-   Introduction to Aggregation

------------------------------------------------------------------------

## 🟢 What is MongoDB?

MongoDB is a **NoSQL database** that stores data in a flexible,
**JSON-like document format** instead of tables and rows.

  SQL Concept   MongoDB Equivalent
  ------------- --------------------
  Database      Database
  Table         Collection
  Row           Document
  Column        Field

MongoDB is widely used in **modern web applications** because it is: -
Scalable\
- Flexible\
- Fast for handling large and changing data

------------------------------------------------------------------------

## 🛠 Tools Used

-   **MongoDB Server**
-   **mongosh** (MongoDB shell)
-   Linux Terminal

------------------------------------------------------------------------

## 🧱 Database Basics

### Connect to MongoDB

``` bash
mongosh
```

### Create / Switch Database

``` js
use Brucedb
```

### Show Databases

``` js
show dbs
```

### Create Collection

``` js
db.createCollection("Students")
```

------------------------------------------------------------------------

## ✍️ CRUD Operations

### ➕ Insert Data

``` js
db.Students.insertOne({
  id: 1,
  name: "Fouenang",
  subname: "Miguel Bruce"
})
```

``` js
db.Students.insertMany([
  { name: "Student1", Math_mark: 15, History_mark: 12, Science_mark: 14 },
  { name: "Student2", English_mark: 16, French_mark: 13, Science_mark: 15 }
])
```

------------------------------------------------------------------------

### 🔍 Read Data

``` js
db.Students.find()
```

Filter example:

``` js
db.readQuiz.find({ quantity: 10, "metrics.ratings": 3.5 })
```

------------------------------------------------------------------------

### ✏️ Update Data

Using `$set`:

``` js
db.Students.updateOne(
  { id: 4 },
  { $set: { name: "Mark" } }
)
```

Other update operators:

  Operator   Purpose
  ---------- --------------------------
  `$set`     Add or modify fields
  `$unset`   Remove a field
  `$inc`     Increment numeric values

Example:

``` js
db.Games.updateOne(
  { name: "FIFA" },
  { $inc: { price: 1000 } }
)
```

------------------------------------------------------------------------

### ❌ Delete Data

``` js
db.Students.deleteOne({ id: 1 })
```

Delete collection:

``` js
db.Students.drop()
```

Delete database:

``` js
db.dropDatabase()
```

------------------------------------------------------------------------

## 🔎 Query Operators Practiced

  Operator   Meaning
  ---------- -----------------------
  `$eq`      Equal
  `$gt`      Greater than
  `$gte`     Greater than or equal
  `$lt`      Less than

Examples:

``` js
db.inventory.find({ qty: { $eq: 20 } })
db.gtQuiz.find({ "item.size": { $gt: 12 } })
db.gteQuiz.find({ qty: { $gte: 15 } })
```

------------------------------------------------------------------------

## 🧩 Nested Documents Example

``` js
{
  _id: 1,
  sku: "abc123",
  quantity: 10,
  metrics: {
    orders: 12,
    ratings: 4.5
  }
}
```

Query nested field:

``` js
db.readQuiz.find({ "metrics.ratings": 3.5 })
```

------------------------------------------------------------------------

## ⚙️ Introduction to Aggregation

Aggregation allows data processing through stages.

Example:

``` js
db.readQuiz.aggregate([
  { $match: { quantity: 10 } },
  { $group: { _id: "$metrics.ratings", total: { $sum: 1 } } }
])
```

------------------------------------------------------------------------

## 🌍 Real-World Use Cases of MongoDB

MongoDB is commonly used for:

-   E-commerce product catalogs\
-   Social media apps\
-   Chat applications\
-   Logs & analytics systems\
-   IoT data storage

------------------------------------------------------------------------

## 📚 Skills Gained

-   Understanding NoSQL databases\
-   Working with MongoDB shell\
-   Performing CRUD operations\
-   Using query operators\
-   Updating structured documents\
-   Basic aggregation knowledge

------------------------------------------------------------------------

## 🚀 Conclusion

This bootcamp provided strong foundational knowledge in MongoDB and
NoSQL systems, which are essential skills for backend and full-stack
development in modern applications.