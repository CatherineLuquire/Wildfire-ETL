
-- Delete tables if exist
DROP TABLE fema_disaster;
DROP TABLE economic_disaster;

-- Create, Import, and Show table of fema_disaster 
CREATE TABLE fema_disaster(
	id INT NOT NULL,
	declaration_date Date NOT NULL,
	state VARCHAR(5) NOT NULL,
	county VARCHAR(200) NULL,
	start_date Date NULL,
	end_date Date NULL,
	close_date Date NULL,
	year Int NOT NULL
);

SELECT * FROM fema_disaster;

-- Create, Import, and Show table of economic_disaster
CREATE TABLE economic_disaster(
	id INT NOT NULL,
	year Int NOT NULL,
	total_wildfire_cost VARCHAR (20) NULL,
	total_wildfire INT NOT NULL
);

SELECT * FROM economic_disaster;



