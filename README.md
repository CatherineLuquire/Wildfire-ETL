# ETL-Project

Creating Database for Wildfire Economic Impact

ETL Project Proposal

Team: 
Yukie Kajita
John Falcone
Katy Luquire

The Ask:
We are looking at the economic impact of natural disasters with a focus on wildfires. Which state has more disasters and what was the economic impact? How has the economic impact of wildfires changed since 1953? What role does location play in economic impact?

Data Sources:
“Federal Emergencies and Disasters, 1953-Present
Has the number of emergencies declared by the president risen over time?”
https://www.kaggle.com/fema/federal-disasters
“Natural disaster data
Occurrence and economic impact”
https://www.kaggle.com/dataenergy/natural-disaster-data?select=number-of-natural-disaster-events.csv

Extract: First we will clean and filter CSV files for wildfire natural disaster data specifically, then relate it by year and state.
Transform: we will create table schemata and relate the databases to each other.
Load: We will use SQL and store the data in Postgres.

Data Products: we will produce a wildfire specific data on economic impacts.
