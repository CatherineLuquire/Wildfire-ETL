
-- Delete tables if exist
DROP TABLE disaster;
DROP TABLE economic;

-- Create, Import, and Show table of Titles 
CREATE TABLE disaster(
	declaration_number VARCHAR(50) NOT NULL,
	declaration_type VARCHAR(50) NOT NULL,
	declaration_date Date NOT NULL,
	state VARCHAR(5) NOT NULL,
	county VARCHAR(200) NULL,
	disaster_type VARCHAR(50) NOT NULL,
	disaster_title VARCHAR(200) NOT NULL,
	start_date Date NULL,
	end_date Date NULL,
	close_date Date NULL,
	individual_assistance_program Boolean Default false,
	individuals_households_Program Boolean Default false,
	public_assistance_program Boolean Default false,
	hazard_mitigation_program Boolean Default false
);

SELECT * FROM disaster;