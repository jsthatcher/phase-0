1. SELECT * FROM states;
2.SELECT * FROM regions;
3.SELECT state_name, population FROM states
4.SELECT state_name, population FROM states ORDER BY population DESC;
5.SELECT state_name FROM states WHERE region_id = 7;
6.SELECT state_name, population_density FROM states ORDER BY population_density ASC;
7.SELECT state_name FROM states WHERE population < 1500000 AND population > 1000000;
8.SELECT state_name, region_id FROM states ORDER BY region_id ASC;
9.SELECT regions.region_name, states.state_name FROM states, regions WHERE region_name LIKE '%central';
10.SELECT regions.region_name, states.state_name FROM states INNER JOIN regions ORDER BY region_id ASC;

What are databases for?
Databases are able to hold and organize large volumes of data.
What is a one-to-many relationship?
This means that something can belong to a catagory, but many other things do as well.

What is a primary key? What is a foreign key? How can you determine which is which?
These keys are different for each record, foreign keys are used to connect the man table to others. Foreign keys are the id values of another table, that can be stored as an atribute for a primary key.
How can you select information out of a SQL database? What are some general guidelines for that?
I look at selecting information as shaving down the master table. You can select what columns you include and how they are ordered. Commands are written in uppercase, identities are in lower case.

[Here are my tables](https://github.com/jthatcher96/phase-0/tree/master/week8/imgs/table.png)