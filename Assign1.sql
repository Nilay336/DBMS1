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

-- question 4
/*4.	Explain  Codd's 12 rules.*/

-- Answer:
/*Codd's 12 rules, proposed by Dr. E.F. Codd in 1985, are a set of guidelines that define what constitutes a relational database management system (RDBMS). These rules are intended to ensure that a database system adheres to the principles of the relational model. The 12 rules are as follows:
1. Information Rule: All information in a relational database is represented explicitly at the logical level and in exactly one way – by values in tables.
2. Guaranteed Access Rule: Every individual data item (atomic value) in a relational database is accessible by using a combination of table name, primary key value, and column name.
3. Systematic Treatment of Null Values: The DBMS must support a representation of "missing information" that is systematic, distinct from all regular values, and independent of data types.
4. Dynamic Online Catalog Based on the Relational Model: The database must provide a catalog (data dictionary) that is accessible to users and applications, and it must be stored in the same way as regular data.
5. Comprehensive Data Sublanguage Rule: The DBMS must support at least one language that has a well-defined syntax and semantics for defining, manipulating, and querying data.
6. View Updating Rule: All views that are theoretically updatable must be updatable by the system.
7. High-Level Insert, Update, and Delete: The DBMS must support set-at-atime insert, update, and delete operations.
8. Physical Data Independence: Changes to the physical storage of data (e.g., file organization) should not affect the logical structure of the database or the application programs.
9. Logical Data Independence: Changes to the logical structure of the database (e.g., adding new tables or columns) should not affect the application programs.
10. Integrity Independence: Integrity constraints must be defined separately from application programs and stored in the catalog. Changes to integrity constraints should not require changes to application programs.
11. Distribution Independence: The DBMS must support the distribution of data across multiple locations without affecting the application programs.
12. Non-Subversion Rule: If a relational system has a low-level (record-at-a-time) language, that low-level language cannot be used to subvert or bypass the integrity rules and constraints expressed in the higher-level relational language.
These rules serve as a benchmark for evaluating the capabilities of relational database systems and ensuring that they adhere to the principles of the relational model.*/  

-- question 5

/*
    5.	Consider the table STUDENT (R_NO, Name, Age, Marks, Course). Write an SQL query to: 
(i) Show the name and roll number of students having maximum marks in each course. 
(ii)Count the total number of student
(iii) Display roll number of students having marks >80 and age>25

*/

-- Answer:
-- (i) Show the name and roll number of students having maximum marks in each course.
SELECT R_NO, Name, Course, Marks
FROM STUDENT S1
WHERE Marks = (SELECT MAX(Marks) FROM STUDENT S2 WHERE S1.Course = S2.Course);

-- (ii) Count the total number of students
SELECT COUNT(*) AS Total_Students
FROM STUDENT;   

-- (iii) Display roll number of students having marks >80 and age>25
SELECT R_NO
FROM STUDENT
WHERE Marks > 80 AND Age > 25;

-- question 6

/*6.	Explain Different types of keys in DBMS with examples.*/

-- Answer:
/*In a Database Management System (DBMS), keys are essential for identifying and establishing relationships between tables. Different types of keys serve various purposes in ensuring data integrity and efficient data retrieval. The main types of keys in DBMS include:
1. Primary Key: A primary key is a unique identifier for each record in a table. It must contain unique values and cannot be null. Example: In a STUDENT table, the R_NO (Roll Number) can be a primary key.
2. Foreign Key: A foreign key is a field (or a set of fields) in one table that refers to the primary key in another table. It establishes a relationship between the two tables. Example: In an ENROLLMENT table, the R_NO can be a foreign key that references the R_NO in the STUDENT table.
3. Candidate Key: A candidate key is a set of one or more fields that can uniquely identify a record in a table. A table can have multiple candidate keys, but only one can be chosen as the primary key. Example: In a STUDENT table, both R_NO and Email can be candidate keys.
4. Composite Key: A composite key is a primary key that consists of two or more fields. It is used when a single field is not sufficient to uniquely identify a record. Example: In an ENROLLMENT table, a combination of R_NO and Course_ID can serve as a composite key.
5. Unique Key: A unique key is similar to a primary key in that it must contain unique values, but it can accept null values. Example: In a STUDENT table, the Email field can be a unique key.
6. Super Key: A super key is a set of one or more fields that can uniquely identify a record in a table. It may contain additional fields that are not necessary for unique identification. Example: In a STUDENT table, the combination of R_NO, Name, and Age can be a super key.
These keys play a crucial role in maintaining data integrity, establishing relationships between tables, and optimizing data retrieval in a DBMS.*/

-- question 7
/*7.	Explain Hierarchical Model, Network Model, Relational Model in DBMS.*/

-- Answer:
/*1. Hierarchical Model: The hierarchical model organizes data in a tree-like structure, where each record has a single parent and can have multiple children. This model is based on a one-to-many relationship, making it suitable for representing data with a clear hierarchy, such as organizational structures or file systems. In this model, data is accessed by traversing the tree from the root to the desired node. However, the hierarchical model has limitations in handling many-to-many relationships and can lead to data redundancy.
2. Network Model: The network model is an extension of the hierarchical model that allows for more complex relationships between records. In this model, records are organized in a graph structure, where each record can have multiple parent and child records, enabling many-to-many relationships. The network model uses sets to represent relationships, allowing for more flexible data representation and retrieval. However, the complexity of the network model can make it difficult to design and maintain.
3. Relational Model: The relational model, proposed by Dr. E.F. Codd, organizes data into tables (relations) consisting of rows (tuples) and columns (attributes). Each table has a primary key that uniquely identifies each record, and relationships between tables are established through foreign keys. The relational model is based on set theory and provides a high level of abstraction, making it easier to design, query, and manipulate data using Structured Query Language (SQL). The relational model supports data independence, integrity constraints, and normalization, reducing data redundancy and improving data consistency. It is the most widely used database model today due to its simplicity and flexibility.*/   

-- question 8
/*8.	What is data independence? Discuss briefly the two types of data independence.*/

-- Answer:
/*Data independence is the ability to change the schema at one level of a database system without affecting the schema at the next higher level. It is a crucial aspect of database management systems (DBMS) that allows for flexibility and adaptability in managing data. There are two types of data independence:
1. Physical Data Independence: Physical data independence refers to the ability to change the physical storage of data without affecting the logical structure of the database or the application programs. This means that changes to how data is stored (e.g., changing file organization, storage devices, or indexing methods) do not impact the way users interact with the data. Physical data independence is important for optimizing performance and storage efficiency while maintaining the integrity of the database.
2. Logical Data Independence: Logical data independence refers to the ability to change the logical structure of the database without affecting the application programs. This means that changes to the schema (e.g., adding or removing tables, changing relationships, or modifying attributes) do not require changes to the application code that interacts with the database. Logical data independence is essential for adapting to changing business requirements and evolving data models while minimizing disruptions to existing applications.
Both types of data independence are vital for the effective management of databases, allowing for easier maintenance, scalability, and adaptability in response to changing needs.*/    

-- question 9
/*9.	What is relational algebra? Explain the different types of operators with example.*/

-- Answer:
/*Relational algebra is a formal system for manipulating and querying relational databases. It provides a set of operations that can be applied to relations (tables) to produce new relations. Relational algebra is the theoretical foundation for SQL and other query languages used in relational database management systems (RDBMS). The main types of operators in relational algebra include:
1. Selection (σ): The selection operator is used to filter rows from a relation based on a specified condition. It returns a new relation containing only the rows that satisfy the condition.
   Example: σ(Age > 25)(STUDENT) - This operation selects all students from the STUDENT table who are older than 25.
2. Projection (π): The projection operator is used to select specific columns from a relation. It returns a new relation containing only the specified attributes.
   Example: π(Name, R_NO)(STUDENT) - This operation projects the Name and R_NO columns from the STUDENT table.
3. Union (∪): The union operator combines the results of two relations with the same schema, removing duplicate rows. It returns a new relation containing all unique rows from both relations.
   Example: STUDENT1 ∪ STUDENT2 - This operation combines the records from STUDENT1 and STUDENT2 tables, removing duplicates.   
4. Set Difference (−): The set difference operator returns the rows that are present in one relation but not in another. It requires both relations to have the same schema.
   Example: STUDENT1 − STUDENT2 - This operation returns the records that are in STUDENT1 but not in STUDENT2.
5. Cartesian Product (×): The Cartesian product operator combines every row from one relation with every row from another relation, resulting in a new relation with all possible combinations of rows.
   Example: STUDENT × COURSE - This operation produces a relation containing all combinations of students and courses.
6. Join (⨝): The join operator combines rows from two relations based on a specified condition, typically matching values in related columns. There are different types of joins, such as inner join, left join, right join, and full join.
   Example: STUDENT ⨝ ENROLLMENT ON STUDENT.R_NO = ENROLLMENT.R_NO - This operation joins the STUDENT and ENROLLMENT tables based on matching R_NO values.
7. Rename (ρ): The rename operator is used to change the name of a relation or its attributes. It is useful for avoiding name conflicts in complex queries.
   Example: ρ(NewStudent, STUDENT) - This operation renames the STUDENT relation to NewStudent.
These operators form the basis of relational algebra and can be combined to create complex queries for retrieving and manipulating data in relational databases.*/

-- question 10
/*10.	What do mean by Data, Information and knowledge? Explain the different types of knowledge with examples.*/

-- Answer:
/*Data: Data refers to raw, unprocessed facts and figures that are collected from various sources. It can be in the form of numbers, text, images, or any other format. Data by itself does not have meaning or context and needs to be processed to become useful. Example: A list of temperatures recorded over a week (e.g., 30°C, 32°C, 28°C).
Information: Information is processed data that has been organized, structured, and presented in a meaningful way. It provides context and relevance, making it useful for decision-making. Information is derived from data through analysis and interpretation. Example: The average temperature for the week is 30°C, indicating a warm climate.
Knowledge: Knowledge is the understanding and insights gained from information through experience, learning, and reasoning.
It involves the application of information to make informed decisions and solve problems. Knowledge is often tacit and can be shared through communication and collaboration. Example: Knowing that a consistent average temperature of 30°C indicates a suitable environment for growing certain crops, leading to better agricultural practices.
Types of Knowledge:
1. Explicit Knowledge: Explicit knowledge is formalized and documented knowledge that can be easily communicated and shared. It includes facts, procedures, and guidelines that are recorded in manuals, databases, or documents. Example: A user manual for software that provides step-by-step instructions on how to use the application.
2. Tacit Knowledge: Tacit knowledge is personal, experiential knowledge that is difficult to articulate and share. It is often gained through hands-on experience and intuition. Example: A skilled craftsman who has developed expertise in woodworking through years of practice, but may find it challenging to explain the techniques used.
3. Procedural Knowledge: Procedural knowledge refers to the knowledge of how to perform specific tasks or processes. It involves understanding the steps and methods required to achieve a particular outcome. Example: Knowing how to operate machinery or conduct scientific experiments.
4. Declarative Knowledge: Declarative knowledge is factual knowledge about concepts, principles, and relationships. It involves understanding "what" something is rather than "how" to do it. Example: Knowing that water boils at 100°C at standard atmospheric pressure.
5. Domain Knowledge: Domain knowledge is specialized knowledge related to a specific field or industry. It encompasses the terminology, practices, and standards relevant to that domain. Example: A medical professional possessing knowledge about human anatomy, diseases, and treatments.
These different types of knowledge play a crucial role in various aspects of personal and professional life, enabling individuals and organizations to make informed decisions and improve performance.*/

-- question 11
/*11.	Consider the following tables : Account( customer_name, account_no, branch_name, balance) 
Give SQL statements for the following queries 
(a) Find the customer name and their account number if their account balance is greater      than or equal to 50,000.
(b) Find the names of all account holders who have an account in 'Civil Lines' branch.
(c) Show the names of different branches along with their average balance.
*/

-- Answer:
-- (a) Find the customer name and their account number if their account balance is greater than
-- or equal to 50,000.
SELECT customer_name, account_no
FROM Account
WHERE balance >= 50000;

-- (b) Find the names of all account holders who have an account in 'Civil Lines' branch.
SELECT customer_name
FROM Account
WHERE branch_name = 'Civil Lines';

-- (c) Show the names of different branches along with their average balance.
SELECT branch_name, AVG(balance) AS average_balance
FROM Account
GROUP BY branch_name;

-- question 12
/*1.	Consider the following tables : Account( customer_name, account_no, branch_name, balance) 
Give SQL statements for the following queries 
(a) Find the customer name and their account number if their account balance is greater      than or equal to 50,000.
(b) Find the names of all account holders who have an account in 'Civil Lines' branch.
(c) Show the names of different branches along with their average balance.
*/

-- Answer:
-- (a) Find the customer name and their account number if their account balance is greater than
-- or equal to 50,000.
SELECT customer_name, account_no    
FROM Account
WHERE balance >= 50000;

-- (b) Find the names of all account holders who have an account in 'Civil Lines' branch.
SELECT customer_name
FROM Account
WHERE branch_name = 'Civil Lines';
-- (c) Show the names of different branches along with their average balance.
SELECT branch_name, AVG(balance) AS average_balance
FROM Account
GROUP BY branch_name;

