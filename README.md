# SQL Practice Repository

Welcome to the **SQL Practice** repository! This repository contains a curated collection of T-SQL (Microsoft SQL Server) scripts, reference queries, and practical examples organized by concept and functionality.

---

## 📁 Repository Structure

```text
sql_practice/
├── 01_basics/            # Core SELECT queries (TOP, ORDER BY, GROUP BY, HAVING)
├── 02_DDL_COMMANDS/      # Data Definition Language (CREATE TABLE, Constraints, Primary Keys)
├── DML_COMMANDS/         # Data Manipulation Language (INSERT, UPDATE, DELETE)
├── filter_commands/      # Filtering techniques (IN, LIKE pattern matching)
├── SQL_JOIN/             # Table joins (INNER, LEFT, RIGHT, FULL, ANTI-JOINS)
├── SQL_SET/              # Set operations (UNION, UNION ALL, INTERSECT, EXCEPT)
├── DateTime_fun/         # Date & Time functions, formatting, casting, & calculations
├── SQL_STRING_FUN/       # String manipulation & substring extraction
├── NULL_FUNCTION/        # NULL value handling (ISNULL, COALESCE, NULLIF)
└── sql_numeric_fun/      # Math & numeric operations
```

---

## 💡 Topics Covered & Modules

### 1. 🔹 SQL Basics (`01_basics/`)
* **SELECT Statements**: Retrieving columns and alias usage.
* **Sorting & Limiting**: `ORDER BY`, `TOP` clause.
* **Aggregation**: `GROUP BY` clause and filtering aggregated results with `HAVING`.

### 2. 🏗️ DDL - Data Definition Language (`02_DDL_COMMANDS/`)
* Creating tables (`CREATE TABLE`) with schema definitions.
* Defining Primary Keys, Foreign Keys, and column constraints (`NOT NULL`, types).

### 3. ✍️ DML - Data Manipulation Language (`DML_COMMANDS/`)
* `INSERT`: Adding new records into database tables.
* `UPDATE`: Modifying existing data with conditional logic.
* `DELETE`: Removing specific rows safely using `WHERE`.

### 4. 🔍 Filtering Commands (`filter_commands/`)
* `IN`: Matching against lists of values.
* `LIKE`: Wildcard searches (`%`, `_`) for string matching.

### 5. 🔗 SQL Joins (`SQL_JOIN/`)
* `INNER JOIN`: Matching rows across tables.
* `LEFT JOIN` / `RIGHT JOIN` / `FULL OUTER JOIN`: Preserving unmatched rows.
* `ANTI JOINS`: Retrieving non-matching records between tables.
* Real-world scenario queries.

### 6. 🔀 Set Operators (`SQL_SET/`)
* Combining result sets using `UNION`, `UNION ALL`, `INTERSECT`, and `EXCEPT`.

### 7. 📅 Date & Time Functions (`DateTime_fun/`)
* Fetching date/time (`GETDATE()`, `CURRENT_TIMESTAMP`, `SYSDATETIME()`).
* Date parts extraction (`DATEPART()`, `DATENAME()`, `YEAR()`, `MONTH()`, `DAY()`).
* Date calculations (`DATEADD()`, `DATEDIFF()`).
* Date formatting & type casting (`FORMAT()`, `CAST()`, `CONVERT()`).

### 8. 🔤 String Functions (`SQL_STRING_FUN/`)
* String extraction (`LEFT()`, `RIGHT()`, `SUBSTRING()`).
* String manipulation (`CONCAT()`, `REPLACE()`, `LEN()`, `CHARINDEX()`, `TRIM()`).

### 9. 🚫 NULL Handling Functions (`NULL_FUNCTION/`)
* Safeguard queries against `NULL` using `ISNULL()`, `COALESCE()`, and `NULLIF()`.

---

## 🛠️ Requirements & Setup

- **Database System**: Microsoft SQL Server / Azure SQL Database.
- **Client Tool**: SQL Server Management Studio (SSMS), Azure Data Studio, or Visual Studio Code with the SQL Server extension.

---

## 📌 Usage

You can execute any `.sql` file in your preferred SQL client connected to a SQL Server database instance.