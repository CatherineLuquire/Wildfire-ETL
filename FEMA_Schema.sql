
-- Delete tables if exist
DROP TABLE year_id;
DROP TABLE fema_disaster;
DROP TABLE economic_disaster;

-- Create, Import, and Show table of year_id
CREATE TABLE year_id(
	id INT NOT NULL,
	year Int NOT NULL,
	PRIMARY KEY(year)
);

SELECT * FROM year_id;


-- Create, Import, and Show table of fema_disaster 
CREATE TABLE fema_disaster(
	id INT NOT NULL,
	declaration_date VARCHAR(15) NOT NULL,
	state VARCHAR(5) NOT NULL,
	county VARCHAR(200) NULL,
	start_date VARCHAR(15) NULL,
	end_date VARCHAR(15) NULL,
	close_date VARCHAR(15) NULL,
	year Int NOT NULL,
	FOREIGN KEY(year) REFERENCES year_id(year)
);

SELECT * FROM fema_disaster;

-- Create, Import, and Show table of economic_disaster
CREATE TABLE economic_disaster(
	id INT NOT NULL,
	year Int NOT NULL,
	total_wildfire_cost VARCHAR (20) NULL,
	total_wildfire INT NOT NULL,
	FOREIGN KEY(year) REFERENCES year_id(year)
);

SELECT * FROM economic_disaster;


