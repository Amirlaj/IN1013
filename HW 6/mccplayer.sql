DROP database  if Exists mccPlayer mcc_database;
CREATE database mcc_database;
use mcc_database;

DROP TABLE if Exists mccPlayer, mccGround, mccMatches, mccMatch_performance;

CREATE TABLE mccPlayer (
	registration_number VARCHAR(4) PRIMARY KEY,
	name VARCHAR(40),
	age TINYINT,
	p_street VARCHAR(20),
	p_town VARCHAR(20),
	p_postcode VARCHAR(8));
	

CREATE TABLE mccGround (
	ground_name VARCHAR(20) PRIMARY KEY,
	g_street VARCHAR(20),
	g_town VARCHAR(20),
	g_postcode VARCHAR(8));

	
CREATE TABLE mccMatches (
	match_date INTEGER PRIMARY KEY,
	opposing_team VARCHAR(20),
	ground_name VARCHAR(20),
	FOREIGN KEY (ground_name) REFERENCES mccGround (ground_name));
	
CREATE TABLE mccMatch_performance (
	registration_number VARCHAR(4),
	match_date INTEGER,
	batting_score SMALLINT,
	FOREIGN KEY (registration_number) REFERENCES mccPlayer (registration_number),
	FOREIGN KEY (match_date) REFERENCES mccMatches (match_date),
	PRIMARY KEY (registration_number, match_date));

INSERT INTO mccPlayer VALUES
	("1001", "AB de Villers", 29, "Damside", "Morpeth", "NE61 3RP"),
	("1002", "Hashim Amla", 30, "Old Gate", "Morpeth", "NE61 9LZ"),
	("1003", "Michael Clarke", 32, "Hotspur Street", "Alnwick", "NE66 8FQ"),
	("1004", "Kumar Sangakkara", 36, "Percy Street", "Alnwick", "NE66 6ST"),
	("1005", "Shivnarine Chanderpaul", 39, "Well Way", "Morpeth", "NE65 9DR"),
	("1006", "Dale Steyn", 30, "Wellbeck Road", "Byker", "NE6 3RE"),
	("1007", "Vernon Philander", 28, "Hollon Street", "Morpeth", "NE65 9DS"),
	("1008", "Rangana Herath", 35, "Whickham Gardens", "Byker", "NE6 3RB"),
	("1009", "Saeed Ajmal", 36, "Priory Orchard", "Durham", "DH3 9PQ"),
	("1010","Ravichandran Ashwin", 27, "Foyle Street", "Sunderland", "SR2 4PO"),
	("1011", "Shane Watson", 32, "Hawthorne Terrace", "Durham", "DH3 9PS"),
	("1012", "Sachin Tendulkar", 40, "Millburn Street", "Sunderland", "SR3 9LV");

INSERT INTO mccGround VALUES 
	("Riverside Ground", "Chester-le-Street", "Durham", "DH3 3QR"),
	("Ashbrooke", "West Lawn", "Sunderland", "SR2 7HH"),
	("Whitburn Hall", "Whitburn Road", "Sunderland", "SR6 7BZ"),
	("The Oval", "Kennington", "London", "SE11 5SS"),
	("Trent Bridge", "Bridgeford Road", "Nottingham", "NG2 6AG"),
	("Collingwood Fields", "Crown Street", "Darlington", "DA2 5RL"),
	("Crystal Palace Park", "Anerley Road", "London", "SE19 2GA"),
	("Gasworks", "King Edward Road", "Tynemouth", "NE30 2HA"),
	("Leaside", "Haldane Street", "Darlington", "N63 8EJ");

INSERT INTO mccMatches VALUES
	(100615, "Whitley Bay","Gasworks"),
	(100804, "Darlington", "Collingwood Fields"),
	(100907, "Alnwick", "Leaside"),
	(110621, "Whitley Bay","Gasworks"),
	(110710, "Darlington", "Collingwood Fields"),
	(110819, "Crystal Palace", "Crystal Palace Park"),
	(110902, "Alnwick", "Leaside"),
	(120608, "Whitley Bay","Gasworks"),
	(120829, "Darlington", "Collingwood Fields"),
	(120925, "Alnwick", "Leaside"),
	(130705, "Whitley Bay","Gasworks"),
	(130817, "Darlington", "Collingwood Fields"),
	(130906, "Alnwick", "Leaside");

INSERT INTO mccMatch_performance VALUES
	("1001", 100615, 59),
	("1002", 100615, 24),
	("1003", 100615, 38),
	("1009", 100615, 17),
	("1010", 100615, 19),
	("1011", 100615, 151),
	("1012", 100615, 100),	
	("1001", 100804, 59),
	("1002", 100804, 24),
	("1003", 100804, 38),
	("1009", 100804, 17),
	("1010", 100804, 19),
	("1011", 100804, 151),
	("1012", 100804, 100),
	("1001", 100907, 59),
	("1002", 100907, 24),
	("1003", 100907, 38),
	("1009", 100907, 17),
	("1010", 100907, 19),
	("1011", 100907, 151),
	("1012", 100907, 100),
	("1001", 110621, 59),
	("1002", 110621, 24),
	("1003", 110621, 38),
	("1009", 110621, 17),
	("1010", 110621, 19),
	("1011", 110621, 151),
	("1012", 110621, 100),
	("1001", 110710, 59),
	("1002", 110710, 24),
	("1003", 110710, 38),
	("1009", 110710, 17),
	("1010", 110710, 19),
	("1011", 110710, 151),
	("1012", 110710, 100),
	("1001", 110819, 59),
	("1002", 110819, 24),
	("1003", 110819, 38),
	("1009", 110819, 17),
	("1010", 110819, 19),
	("1011", 110819, 151),
	("1012", 110819, 100),
	("1001", 110902, 59),
	("1002", 110902, 24),
	("1003", 110902, 38),
	("1009", 110902, 17),
	("1010", 110902, 19),
	("1011", 110902, 151),
	("1012", 110902, 100),
	("1001", 120608, 59),
	("1002", 120608, 24),
	("1003", 120608, 38),
	("1009", 120608, 17),
	("1010", 120608, 19),
	("1011", 120608, 151),
	("1012", 120608, 100),
	("1001", 120829, 59),
	("1002", 120829, 24),
	("1003", 120829, 38),
	("1009", 120829, 17),
	("1010", 120829, 19),
	("1011", 120829, 151),
	("1012", 120829, 100),
	("1001", 120925, 59),
	("1002", 120925, 24),
	("1003", 120925, 38),
	("1009", 120925, 17),
	("1010", 120925, 19),
	("1011", 120925, 151),
	("1012", 120925, 100),
	("1001", 130705, 59),
	("1002", 130705, 0),
	("1003", 130705, 38),
	("1009", 130705, 0),
	("1010", 130705, 19),
	("1011", 130705, 151),
	("1012", 130705, 100),
	("1001", 130817, 59),
	("1002", 130817, 24),
	("1003", 130817, 38),
	("1009", 130817, 17),
	("1010", 130817, 19),
	("1011", 130817, 151),
	("1012", 130817, 100),
	("1001", 130906, 59),
	("1002", 130906, 24),
	("1003", 130906, 38),
	("1009", 130906, 17),
	("1010", 130906, 19),
	("1011", 130906, 151),
	("1012", 130906, 100);


    