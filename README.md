Table of Contents 
Content Name	Page NO
DEDICATION	3
ORGANIZATION OVERVIEW	4
EXECUTIVE SUMMARY	5
CHAPTER 1 
INTRODUCTION	6
1.1. Theoretical Background	7
1.2. Proposed Solution	8
1.3. Objectives	8
1.4. Project Plan	8
CHAPTER 2
PLANNING, PROJECT DESIGN & DATA COLLECTION	
2.1. Planning	11
2.2. Entity and Attributes Name	12
2.3. Er Diagram 	14
2.4. Data Collection 	14
2.5. Data Table	15
2.6. Schema Diagram	20
CHAPTER 3
Software & Hardware Requirement Specifications
	
3.1. Product Function	22
3.2. Required Software	22
3.3. User Interface	23
3.4. Hardware Interface	23
3.5. Connection interface	23
CHAPTER 4
Application Connectivity
	
4.1 FRONTEND Design Language	25
4.2 BACKEND Design Language	25
4.3 InnoDB	25
4.4 My SQL	26
4.5 SQL Code to create database sample: 
	27
4.6 Sample SQL Queries:
	28
Conclusion
	29












DEDICATION
We dedicate this dissertation to our beloved teachers, who taught us to achieve the goal with sincerity, honesty & hardworking. They also provide us the resources to complete this task. We also dedicate this dissertation to our beloved seniors who showed us the way to complete the project.










ORGANIZATION OVERVIEW
Kadena Sportsware is a company that specializes in the production and distribution of high-quality athletic apparel and accessories. Their products are designed for both professional and amateur athletes, providing comfort and support during training and competition. The company is known for their innovative materials and advanced technologies, such as moisture-wicking fabrics, anti-odor treatments, and lightweight construction. Additionally, Kadena Sportsware places a strong emphasis on sustainability and ethical production, sourcing materials from sustainable sources and implementing fair labor practices in their factories. With a commitment to quality and performance, Kadena Sportsware is a trusted brand among athletes and sports enthusiasts.











Executive Summary
We are developing a database management system for Kadena Sportsware LTD. Database has a front end to entry the data to database. Database is built using MySQL. With this System Management can add information about the departments in the company and other info’s Like fashion design department and its branches. Accounts Department, HR Department and It Department and the Database even covers Canteen, Mosque, IT dept. and Medical Department. Management can see all employee list and data from database and make strategical and tactical information about the company 








Chapter 1: Introduction
Kadena Sportsware is a leading manufacturer of athletic apparel and accessories, with a reputation for high-quality products and innovative design. To support their continued growth and success, Kadena Sportsware has decided to implement a comprehensive database management system (DBMS).
It is comprehensive project developed from the ground up to full fill the needs of Kadena Sportsware as they aim to maintain digitally. This reduce data error and ensures that the information is always up to-date throughout the years.
This project is useful for easy user interface. The system utilizes the powerful database management, data retrieval and data manipulation. This project provides more ease for managing the data than manually maintaining in the documents.
The project is useful for saving valuable time and reduces the huge paper work. To successfully develop this system, a number of tools was studied and used. These includes SQL, MySQL, HTML, PHP, CSS and BOOTSTRAP. The tools and technologies used are discussed into detail in this document.




1.1	Theoretical Background 
Kadena Sportsware database management system project report should provide an overview of the concepts and technologies that are relevant to the design and implementation of a database system for a sports apparel company. This can include topics such as:
a)	Database design principles: This section can provide an overview of the basic principles of database design, including entity-relationship modelling, normalization, and database architecture.
b)	Relational databases: The report should explain what a relational database is and how it can be used to store and manage data in an organized manner.
c)	SQL: The report should introduce Structured Query Language (SQL) as the primary tool for querying and manipulating data stored in a relational database.
d)	Data warehousing: If Kadena Sportsware plans to use a data warehouse for decision making and business intelligence, this section can provide an overview of what a data warehouse is, how it differs from a transactional database, and the benefits of using one.
e)	Data mining: Data mining is the process of discovering patterns and relationships in large amounts of data. If Kadena Sportsware plans to use data mining techniques to analyze their sales data, this section can provide an overview of what data mining is and how it can be used to gain insights and improve business decision-making.
f)	Security and privacy: Finally, the report should address security and privacy considerations for the Kadena Sportsware database system, including data encryption, access control, and backup and recovery.








1.2	Proposed Solution
As company didn’t have solution like this we are proposing a new solution for Kadena Sportsware. New system contains the following activities, which try to automate the entire process keeping in view of the database integration approach. 
• User friendliness is provided in the applications with various control. 
• The system makes the overall project management much easier and flexible. 
• It can be accessed over internet 
• This is no risk of data management of any level while the project development is under process.


1.3	Objectives
•	We can add, modify, search and delete data about employees and other staff of the company. 
•	It contains employee and other staff’s personal information. 
•	It saves the data of employee and other staff’s salary. 
•	It contains the personal information. 
•	It contains medical departments information.


1.4	Project Plan
A project plan for the Kadena Sportsware database management system project report should outline the steps and timeline for designing, implementing, and testing a database system to support the company's operations. A sample project plan could include the following phases:
a)	Requirements gathering: This phase involves meeting with stakeholders and conducting research to gather information about the company's business processes, data requirements, and desired system capabilities. The output of this phase should be a detailed list of requirements and a preliminary database design.
b)	System design: In this phase, the project team will use the information gathered in the requirements gathering phase to create a detailed database design, including entity-relationship diagrams, table structures, and data definitions.
c)	Implementation: In this phase, the project team will use the database design to build and configure the database system, including loading data into the system, configuring security and access controls, and setting up backup and recovery procedures.
d)	Testing: This phase involves testing the database system to ensure that it meets the requirements defined in the requirements gathering phase and performs as expected. This includes unit testing, system testing, and user acceptance testing.
e)	Deployment: Once testing is complete and the system has been approved by stakeholders, the database system can be deployed into a production environment and made available to users.
f)	Maintenance: After deployment, the project team should monitor the database system for performance and functionality and make any necessary changes or improvements.
g)	The project plan should also include a timeline, outlining the start and end dates for each phase, as well as milestones and deliverables. The timeline should be based on realistic expectations for the project, taking into account the size and complexity of the database system, the available resources, and the budget.


















Chapter 2
Planning, Project Design & Data Collection











2.1	Planning
in order to design, implement, and maintain a robust and efficient database system for the company. This section can include the following components:
i)	Project scope and objectives: This section should clearly define the goals and objectives of the project, as well as the scope of work that will be covered. This could include defining the types of data that will be stored in the database, the specific business requirements that the database must meet, and any constraints or limitations that need to be considered.
ii)	Resource allocation: This section should outline the resources that will be needed for the project, including personnel, hardware, software, and budget. It should also detail the timeline for the project, including key milestones and deadlines.
iii)	Database design: This section should provide a detailed description of the database design, including data models, entity-relationship diagrams, and data definitions. It should also describe the database architecture and the data management strategies that will be used to ensure data quality, security, and privacy.
iv)	Data migration: If the database system is being implemented as a replacement for an existing database, this section should detail the process of migrating existing data into the new database. This could include mapping existing data structures to the new data model, defining data conversion rules, and testing the data migration process.
v)	Implementation and testing: This section should describe the steps that will be taken to implement the database system, including the installation and configuration of database software, the creation of data tables and indexes, and the development of database queries and reports. It should also detail the testing plan, including the types of tests that will be performed, the expected outcomes of each test, and the procedures for resolving any issues that are discovered during testing.
vi)	Maintenance and support: This section should describe the ongoing maintenance and support requirements for the database system, including backup and recovery procedures, security and access controls, and the procedures for updating the database as the business requirements change over time.


2.2	Entity and Attributes Name:
•	paygrade (gradeID, transactionId, empID, accID)
•	salary(salID, reimbursmentDate, empNetSalary)
•	transaction(transactionID, reimbursmentDate)
•	accounts(accID, gradeID, salID, transactionID, empID),
•	fashiondesigndept(ProductID, designID, execID)
•	bikeprotgear(designId, Pname, ProductId, fashiondesigndept_ProductID) 
•	canteen(empID, Sell, Cost, profit)
•	cricketjersey(designId, Pname, ProductId, fashiondesigndept_ProductID) 
•	crickhelmetcover(designId, Pname, ProductId, fashiondesigndept_ProductID) 
•	footballjersey(designId, Pname, ProductId, fashiondesigndept_ProductID) 
•	gloves(designId, Pname, ProductId, fashiondesigndept_ProductID) 
•	rawmaterials(matID, impID, importedprod, qty)
•	importdept(impID,OrderDate,DeliverDate,matID)
•	sell(sellID, total sell, expID, qty)
•	exportdept(expID, OrderDate, DeliverDate, sellID),
•	marketingdept(execID, impID,fashiondesigndept_ProductID, importdept_impID)
•	management(empID, accID, execID, marketingdept_execID) 
•	hr_dept(hrID, empID, management_empID, management_marketingdept_execID) 
•	employee(empID, empName, empAdd, empDOB, empCell)
•	firedept(empID, installDate, replaceDate, iquipmentID)
•	hockeykits(designId, Pname, ProductId, fashiondesigndept_ProductID) 
•	it_dept(empID, user, pass)
•	jackets(designId, Pname, ProductId, fashiondesigndept_ProductID) 
•	medical_dept(empID, docname, contact, medical_deptname)
•	mosque(empID,joining_date)
•	racinggears(designId, Pname, ProductId, fashiondesigndept_ProductID) 
•	sportsprotectiongear(designId, Pname, ProductId, fashiondesigndept_ProductID)




















2.3	E-R Diagram

 



2.4	Data Collection
The data collection section of the Kadena Sportsware database management system project report should detail the process of gathering and organizing data that will be used to build and populate the database. This section can include the following components:
1)	Data sources: This section should identify and describe the sources of data that will be used to populate the database, such as sales records, customer information, inventory data, and production data.
2)	Data collection methods: This section should outline the methods that will be used to collect data from various sources, such as manual data entry, data import from existing systems, and data scraping from web sources.
3)	Data quality control: This section should describe the measures that will be taken to ensure the accuracy, completeness, and consistency of the data that is collected, such as data validation rules, data reconciliation, and data auditing procedures.
4)	Data storage and organization: This section should describe the process of organizing and storing the data in a manner that is efficient and consistent with the database design.
5)	Data privacy and security: This section should outline the measures that will be taken to ensure the privacy and security of sensitive data, such as customer information and financial data, in accordance with industry standards and regulations.
It is important to emphasize the importance of high-quality data in the success of the database management system and the overall operations of Kadena Sportsware. The data collection process should be well-planned, organized, and executed in order to ensure the accuracy and reliability of the information stored in the database.
2.5	Data Table

it_dept
empID	user 
01	sadia
02	snikhda
03	rasel

mosque
empID	joining_date
01	11/11/2023
02	11/11/2022
03	25/07/2021
	

employee
empID	empname	empAdd	empDOB	empCell
01	John F	325/k jawtala	11/11/2001	01715869789
02	skhimit	446/c
polishline	17/03/2005	01717858688
03	alvhart	322/p
chokbazar	25/08/2012	01615638764

canteen
empID	sell	cost	profit
01	Tea	4200	800
02	Samosa	2200	1000
03	Alupuri	2700	900




firedept
empID	installDate	replaceDate	iquipm entID
01	12/03/2010	20/05/2010	0052796
02	25/07/2015	15/08/2015	0052788
03	29/02/2019	27/03/2019	0052757

medical_dept
empID	docname	contact	medical_deptname
01	jerin.doc	01617858977	medicin
02	ariyan.doc	01925807779	ent
03	jakir	01350078922	dermatology

employee
empID	empname	empAdd	empDOB	empCell
01	afiz	cumilla	11/2/2001	01756646542
02	karim	borishal	11/12/2000	01458484321
03	marin	dhaka	4/11/1999	01540088485

bikeprotgear
design ID	Pname	ProductID
01	jacket	006734
02	hand glabs	006722
03	knee products	006712
		

footballjersey
design ID	Pname	ProductID
01	t shirt	0053769
02	jersey	0053731
03	jogars	0053290
		

racinggears
design ID	Pname	ProductID
01	jercey	132456
02	switer	132489
03	jacket	132455
		



gloves
design ID	Pname	ProductID
01	jacket	231776
02	hand glabs	231774
03	jogars	231779
		

crickhelmetcover
design ID	Pname	ProductID
01	jogars	543298
02	jersey	543882
03	hand glabs	543872

cricketjersey
design ID	Pname	ProductID
01	jersey	778450
02	jogars	345228
03	hand glabs	345229

sportsprotectiongear
design ID	Pname	ProductID
01	chest foorm	342778
02	hand foorm	342290
03	knee foorm	346789

jackets
design ID	Pname	ProductID
01	winter jacket	986733
02	summer jacket	986533
03	normal jacket	987344



hockeykits
design ID	Pname	ProductID
01	hocky jacket	334256
02	hand glabs	334276
03	shocks	334567
		

fashiondesigndept
ProductID	design ID	ProductID	execID
01	t shirt	446532	907654
02	jacket	446754	907230
03	hand glabs	448907	978430

marketingdept
execID	marketingDEPTcol	impID
01	norayel express	9874532
02	srb express	9873427
03	dld 	7843079

importdept
impID	orderDate	deliverDate	matID
01	12/03/2021	23/05/2021	453889
02	10/07/2022	25/10/2022	453877
03	09/04/2020	16/06/2020	453267

rawmaterials
matID	impID	importedprod	qty
01	754322	button	high
02	976436	cotton	high
03	784568	lais	high
			

exportdept
expID	orderDate	deliverDate	sellID
01	04/10/2019	20/10/2019	3456210
02	21/05/2020	15/06/2020	8734652
03	05/08/2022	20/09/2022	0943667





sell
sellID	total sell	expID	qty
01	100005320	368564	high
02	80000340	453829	high
03	20007459	346219	high
			

hr_dept
hrID	empID	management_empID	management_marketingdept_execID
01	457326	3356	3546
02	432567	3224	3432
03	467325	3426	3632

management
empID	accID	execID
01	346270	096532
02	346943	093452
03	349234	094329

management
management_empID	accounts_accID
01	85432009
02	85490623
03	85432087

accounts
accID	gradeID	salID	transactionID	empID
01	54327	98670	234619	965300
02	54621	98453	238154	964367
03	54210	98236	238847	960039

transaction
transactionID	reim bursmentDate 
01	03/06/2012
02	09/06/2012
03	15/07/2012

paygrade
gradeID	transactionID	empID	accID
01	345200	673320	99067
02	347780	673443	99322
03	347778	674321	99543


salary
salID	reim bursmentDate	empNetsalary	salarycol	empID
01	10 of everymonth	15000		2216543
02	10 0f every month	30000		2295640
03	10 0r every month	80000		2346129



2.6	Schema Diagram
 












Chapter 3
Software & Hardware 
Requirement Specifications





















3.1	Product Function
Functions Of Database:
Front end to input and show entries of: 
•	Employees
•	Employees Salary
•	Export import info
•	Buy & Sell info

3.2	Required Software
To complete our project, we required some software. Xampp, VS Code & Chrome web browser. 
Xampp: The most obvious characteristic of XAMPP is the ease at which a WAMP webserver stack can be deployed and instantiated. Officially, XAMPP's designers intended it for use only as a development tool, to allow website designers and programmers to test their work on their own computers without any access to the Internet. To make this as easy as possible, many important security features are disabled by default. XAMPP has the ability to serve web pages on the World Wide Web. A special tool is provided to password-protect the most important parts of the package. XAMPP also provides support for creating and manipulating databases in SQL and MySQL. 
VS Code: Visual Studio Code is a streamlined code editor with support for development operations like debugging, task running, and version control. It aims to provide just the tools a developer needs for a quick code-build-debug cycle and leaves more complex workflows to fuller featured IDEs, such as Visual Studio IDE. 
Chrome: Chrome is designed to be the fastest web browser. With one click, it loads web pages, multiple tabs, and applications with lightning speed. Chrome is fitted with V8, a faster and more powerful JavaScript engine. Chrome also loads web pages faster by using the Web Kit open-source rendering engine




3.3	User Interface
Screen Name	Description
Insert page	Data can be inserted through this page
View page	Data can be viewed through this page
Submit Data	Data can be view select and delete at any time.

3.4	Hardware Interface:
Prerequisite equipment requirement for using website will be as follows: 
•	Processor 
•	Ram (156 MB or Above) 
•	Hard disk (25 GB or Above) 
•	Basic system with fundamental need of a personal computer or any device run in the website

3.5	Connection Interface:
The connection will be established between the database and the frontend part of the website by PHP language using a connection file along with the html CSS, JavaScript, Bootstrap.


























Chapter 4
Application Connectivity










    4.1  FRONTEND Design Language

HTML5 
HTML is at the core of every web page, regardless the complexity of a site or number of technologies involved. It's an essential skill for any web professional. It's the starting point for anyone learning how to create content for the web. And, luckily for us, it's surprisingly easy to learn. 
CSS 
CSS stands for Cascading Style Sheets. This programming language dictates how the HTML elements of a website should actually appear on the frontend of the page. 


4.2  Backend Design Language
PHP 
PHP (Hypertext Pre-processor) is known as a general-purpose scripting language that can be used to develop dynamic and interactive websites. It was among the first server-side languages that could be embedded into HTML, making it easier to add functionality to web pages without needing to call external files for data. We use PHP language in our project to connect FRONTEND and database connection.
     4.3 InnoDB  
ACID compliance: InnoDB is fully compliant with the Atomicity, Consistency, Isolation, Durability (ACID) principles, ensuring that data transactions are processed reliably and securely.
Row-level locking: InnoDB implements row-level locking, which allows multiple transactions to access different rows in the same table concurrently, improving performance and scalability.
Referential integrity: InnoDB supports foreign key constraints, which enforce referential integrity and help to maintain the consistency of the data in the database.
Crash recovery: InnoDB implements an automated crash recovery process, which allows the database to recover from unexpected failures and ensure that data is not lost.
Clustered indexing: InnoDB implements clustered indexing, which physically organizes the data on disk according to the primary key, improving query performance and reducing disk I/O.
InnoDB is widely used in a variety of applications, including e-commerce websites, online marketplaces, and content management systems, due to its performance, reliability, and support for transactional processing.



4.4 My SQL
MySQL is an open-source relational database management system (RDBMS) that is widely used for web-based and other applications that require a robust and scalable data storage solution. It was developed by Swedish company MySQL AB and is now owned by Oracle Corporation.
Some key features of MySQL include:
SQL support: MySQL supports Structured Query Language (SQL), the standard language for interacting with relational databases, making it easy to use for developers and administrators.
Cross-platform compatibility: MySQL can run on various operating systems, including Windows, macOS, and Linux, making it a versatile solution for many different environments.
Scalability: MySQL can handle large amounts of data and concurrent users, making it suitable for use in high-traffic web applications and other demanding environments.
High performance: MySQL has a fast and efficient query processing engine, making it capable of delivering high performance even with large datasets.
Community-driven development: MySQL has an active and supportive community of developers and users who contribute to its development and improvement, making it a popular choice for many organizations.
MySQL is used by a variety of organizations, including small businesses, government agencies, and large enterprises, for a wide range of applications, such as e-commerce, content management systems, and data warehousing.







4.5 SQL Code to create database sample: 
 
4.6 Sample SQL Queries:
 



Conclusion
In conclusion, the Kadena Sportsware Database management System project aimed to design and implement a reliable and efficient system for managing the data and information of the sportsware company. The system was designed using a combination of technologies, including MySQL for database management, PHP for server-side scripting, and InnoDB as the storage engine.
Throughout the project, various steps were taken to ensure the quality and reliability of the system, including requirements gathering, planning, data collection, and implementation. The system was tested thoroughly to ensure that it met the requirements and performed optimally.
The end result of the project is a robust and scalable database management system that provides Kadena Sportsware with the ability to efficiently store, manage, and retrieve its data. The system is user-friendly, easy to use, and capable of handling large amounts of data and users, making it ideal for supporting the company's growing business needs.
In light of the above, it can be said that the Kadena Sportsware Database management System project has been successful in achieving its objectives and delivering a high-quality solution that meets the requirements of the company. The system has the potential to significantly improve the efficiency and performance of Kadena Sportsware's operations, making it a valuable investment for the company.


