# The task 
1. Define the TI-Architecture for the TBS example project: 
	- Hardware and OS for Client and Server. 
	- Used runtime environments for Client and Server (e.g. application server, client runtimes,…), including versions. 
	- Used database system, including version. 
	- Physical layout of the system (e.g. server application and data base on same or different servers, clustering, distribution of physical and virtual machines, secure zones, DMZ, …) 
	- Network connections and protocols used, including connections to third-party systems. 
	- 

##  Notes 
Part of the application will be reachable via the internet. This imposes special requirements regarding the security architecture. 

# Desired results 
The TI-architecture should be documented: 

A diagram describing the TI-architecture. Show all elements identified, including their versions (where applicable). Show all network connections between the elements, including protocols used. 

A discussion which non-functional requirements influence / determine which decision concerning the TI-architecture. 


## Recommended material 
TBS Requirements Specification 
The following list of non functional requirements (NFR) 
UML notation overview 

# Tools that can be used 

Paper and pens 
Flip chart 
Optional: Word, Excel, Powerpoint 
Printout of the UML diagram overview on completion of the tasks 

# NFR 

 | Artifact ID | Topic           | Requirement                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | Where?      |     |
 | ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | --- |
 | NFR-1       | GUI             | The dialogs of the TBS Client must integratable in a Java Swing Portal.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | Page 2      |     |
 | NFR-2       | GUI             | The client for the customer must be developed as web application which is accessible via the internet.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | Page 2      |     |
 | NFR-3       | Security        | The user password had to be stored one-way encrypted in the database.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Page 3      |     |
 | NFR-4       | Architecture    | The system should be able to accommodate all possible future tariff models.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | Page 4      |     |
 | NFR-5       | Validation      | The system reports recognizable input errors as soon as possible (i.e. it does not wait until you have completed an entire form).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | Page 7      |     |
 | NFR-6       | Security        | The communication via the internet must be encrypted.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Page 7      |     |
 | NFR-7       | Adjacent system | The CallTrack system makes the CDRs available in a message queue every hour. The data format for the CDRs is CSV.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | Page 8      |     |
 | NFR-8       | Adjacent system | The bills are printed by the MassPrint system, which expects an XML file that adheres to a set DTD for each bill. MassPrint does not confirm that a bill has been printed.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | Page 9      |     |
 | NFR-9       | Scalability     | It must be possible to fulfill the performance requirements for a future increased load within an economically reasonable hardware and infrastructure setup.    There are currently around 500,000 customers with an average of three phone numbers each. There is growth of 10,000 customers a month.   The following table shows the numbers of CDRs generated:     CDRs per hour Period  400,000 Mon-Fri, 9 a.m. to 5 p.m.  250,000 Mon-Fri, 5 p.m. to 9 p.m.  150,000 Mon-Sun, 9 p.m. to mid-night  200,000 Sat-Sun, 9 a.m. to 9 p.m.  15,000 Mon-Sun, midnight to 9 a.m.  It is to be assumed that the CDRs will grow in proportion with the growth in customer numbers. | Pages 10-11 |     |
 | NFR-10      | Availability    | TBS must offer 99.9% availability to customers accessing it over the Internet.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Page 12     |     |
 | NFR-11      | Availability    | The TBS client must be available from 8 a.m. to 8 p.m. on Monday to Saturday and from 10 a.m. to 4 p.m. on Sunday (these are the call center's current hours of business).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | Page 12     |     |
 | NFR-12      | Maintenance     | As far as the operation of the system is concerned, the TI department expects to receive messages about important events in its logging system.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | Page 13     |     |


## Telecom Billing System TBS
![[Pasted image 20230905134122.png]]




## Hardware wswz
## Runtime environments
## DB systems
## Physical layout
## Network connections

It must be possible to fulfill the performance requirements for a future increased load within an economically reasonable hardware and infrastructure setup.  
  
* 500,000 customers. Avg 3 numbers  each.
*  Expected +10,000 customers a month.  

The following table shows the numbers of CDRs generated: 
CDRs per hour Period 
	400,000 Mon-Fri, 9 a.m. to 5 p.m. 
	250,000 Mon-Fri, 5 p.m. to 9 p.m. 
	150,000 Mon-Sun, 9 p.m. to mid-night 
	200,000 Sat-Sun, 9 a.m. to 9 p.m. 
	15,000 Mon-Sun, midnight to 9 a.m. 

It is to be assumed that the CDRs will grow in proportion with the growth in customer numbers. 