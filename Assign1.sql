-- Data science Assigment of DBMS 

-- question 1
/*1.	Discuss the main characteristics of DBMS approach. How it is different from traditional file system?*/

-- Answer:
/*A Database Management System (DBMS) is a software system that enables the creation, management, and manipulation of databases. The main characteristics of a DBMS approach include:
1. Data Independence: DBMS provides a level of abstraction that separates the physical storage of data from its logical representation, allowing changes to be made to the database structure without affecting the application programs.
2. Data Integrity: DBMS enforces data integrity constraints to ensure the accuracy and consistency of data within the database.
3. Data Security: DBMS provides mechanisms to control access to data, ensuring that only authorized users can perform specific operations on the database.
4. Data Redundancy Control: DBMS minimizes data redundancy by centralizing data storage, reducing the chances of data duplication and inconsistency.
5. Concurrent Access: DBMS allows multiple users to access and manipulate the database simultaneously while maintaining data integrity through transaction management.
6. Backup and Recovery: DBMS provides tools for data backup and recovery to protect against data loss or corruption.
7. Query Language: DBMS supports a query language (such as SQL) that allows users to easily retrieve and manipulate data.   
Differences between DBMS and Traditional File System:
1. Data Organization: In a traditional file system, data is stored in flat files, whereas a DBMS organizes data into tables with defined relationships.
2. Data Redundancy: Traditional file systems often lead to data redundancy and inconsistency, while DBMS minimizes redundancy through normalization.
3. Data Integrity: DBMS enforces data integrity constraints, while traditional file systems lack such mechanisms.
4. Concurrent Access: DBMS supports concurrent access by multiple users, while traditional file systems may face issues with data consistency when accessed simultaneously.
5. Data Security: DBMS provides robust security features, whereas traditional file systems have limited access control.
6. Backup and Recovery: DBMS includes built-in backup and recovery tools, while traditional file systems require manual processes for data protection.
7. Querying: DBMS offers a powerful query language for data manipulation, while traditional file systems rely on custom code for data retrieval and manipulation.*/ 

-- question 2
/*2.	What are different database languages? Which types of actions are provided by them?*/

-- Answer:
/*There are several types of database languages, each serving different purposes in managing and interacting with databases. The main types of database languages include:
1. Data Definition Language (DDL): DDL is used to define and manage the structure of database objects such as tables, indexes, and schemas. Common DDL commands include:
   - CREATE: To create new database objects.
   - ALTER: To modify existing database objects.
   - DROP: To delete database objects.
   - TRUNCATE: To remove all records from a table without logging individual row deletions.
2. Data Manipulation Language (DML): DML is used to retrieve, insert, update, and delete data within the database. Common DML commands include:
   - SELECT: To retrieve data from one or more tables.
    - INSERT: To add new records to a table.
    - UPDATE: To modify existing records in a table.
    - DELETE: To remove records from a table.
3. Data Control Language (DCL): DCL is used to control access to data within the database. Common DCL commands include:
    - GRANT: To give users specific privileges on database objects.
    - REVOKE: To remove previously granted privileges from users.
4. Transaction Control Language (TCL): TCL is used to manage transactions within the database, ensuring data integrity and consistency. Common TCL commands include:
    - COMMIT: To save all changes made during the current transaction.
    - ROLLBACK: To undo all changes made during the current transaction.
    - SAVEPOINT: To set a point within a transaction to which you can later roll back.
    - SET TRANSACTION: To establish the properties of a transaction, such as isolation level.
These database languages work together to provide a comprehensive framework for managing and interacting with databases, ensuring data integrity, security, and efficient data manipulation.*/

-- question 3
/*3.	Describe the database life cycle with diagram.*/

-- Answer:
/*The Database Life Cycle (DBLC) is a series of stages that a database goes through from its initial conception to its eventual retirement. The main stages of the database life cycle include:
1. Requirement Analysis: In this stage, the requirements for the database are gathered and analyzed. This involves understanding the data needs of the organization, identifying key stakeholders, and defining the scope of the database.
2. Database Design: This stage involves creating a detailed design of the database structure. It includes conceptual design (using ER diagrams), logical design (defining tables, relationships, and constraints), and physical design (determining storage structures and access methods).
3. Implementation: In this stage, the database is created based on the design specifications. This involves writing SQL scripts to create tables, indexes, and other database objects, as well as populating the database with initial data.
4. Testing: The database is tested to ensure that it meets the requirements and functions correctly. This includes testing for data integrity, performance, and security.
5. Deployment: Once the database has been tested and approved, it is deployed to the production environment where it will be used by end-users.
6. Maintenance: This stage involves ongoing maintenance and support of the database. It includes tasks such as performance tuning, backup and recovery, and applying updates or patches.
7. Retirement: Eventually, the database may become obsolete or no longer needed. In this stage, the database is decommissioned, and data may be archived or migrated to a new system.
Here is a simple diagram representing the Database Life Cycle:
    +---------------------+
    | Requirement Analysis|
    +---------------------+
                  |
                  v
    +---------------------+
    |   Database Design   |
    +---------------------+
                  |
                  v
    +---------------------+
    |    Implementation   |
    +---------------------+
                  |
                  v
    +---------------------+
    |       Testing       |
    +---------------------+
                  |
                  v
    +---------------------+
    |      Deployment     |
    +---------------------+
                  |
                  v
    +---------------------+
    |      Maintenance    |
    +---------------------+
                  |
                  v
    +---------------------+
    |      Retirement     |
    +---------------------+
                    |
                    v                   
                End of Life 
This diagram illustrates the sequential flow of the database life cycle stages, highlighting the key processes involved in managing a database from inception to retirement.*/