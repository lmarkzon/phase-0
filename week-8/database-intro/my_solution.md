###Release 5: SELECTing data from a database    
1. Select all data for all states. 

	SELECT * FROM states;
2. Select all data for all regions.  

	SELECT * FROM regions;
3. Select the state_name and population for all states. 

	SELECT state_name, population FROM states;
4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.

	SELECT state_name, population FROM states ORDER BY population DESC;
5. Select the state_name for the states in region 7.
	SELECT state_name FROM states WHERE region_id=7;
6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.
	SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;
7. Select the state_name for states with a population between 1 million and 1.5 million people.
	SELECT state_name FROM states WHERE population > 1000000 AND population < 1500000;
8. Select the state_name and region_id for states ordered by region in ascending order.
	SELECT state_name, region_id FROM states ORDER BY region_id ASC;
9. Select the region_name for the regions with "Central" in the name.
	SELECT region_name FROM regions WHERE region_name LIKE '%Central%';
10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).
	SELECT region_name, state_name FROM states INNER JOIN regions ON states.region_id=regions.id ORDER BY region_id ASC;

###Release 6: Your Own Schema
to include a persons and outfits table. Be sure to connect them. Create at least 4 columns (with general types**) for each table. One of the fields in the outfits table should refer to the id in the persons table. (Since you aren't just making this database for Cher, you want to sell it to all of her friends and your own friends as well). Reference the conventions file to read about database naming conventions. 

When you finish, take a screen shot of your schema design, upload it to your phase-0/week-8/database-intro directory and include it inline in your my_solution.md file.

** For types, just select the type that creates the right color. It doesn't matter right now whether you select between TEXT or VARCHAR for example. As long as it's the right color you're okay.

![schema design](/8_4screenshot.png)

Release 7: Reflect
- What are databases for?

- What is a one-to-many relationship?

- What is a primary key? What is a foreign key? How can you determine which is which?

- How can you select information out of a SQL database? What are some general guidelines for that?
