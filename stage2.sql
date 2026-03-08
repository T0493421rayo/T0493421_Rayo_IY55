
USE dvd_tables;
SHOW DATABASES;

CREATE TABLE borrowers (
    borrower_no VARCHAR(10) PRIMARY KEY,
    borrower_name VARCHAR(100) NOT NULL,
    borrower_address VARCHAR(255),
    borrower_status VARCHAR(20)
);

CREATE TABLE dvds(
    dvd_no VARCHAR(10) PRIMARY KEY,
    dvd_title VARCHAR(100)NOT NULL,
    dvd_starring VARCHAR(100)NOT NULL,
    dvd_year INT NOT NULL,
    rental_category VARCHAR(50)NOT NULL,
    rental_cost DECIMAL(5,2)NOT NULL

);


CREATE TABLE loans(
    loan_no VARCHAR(10)PRIMARY KEY,
    borrower_no VARCHAR(10)NOT NULL,
    loan_date DATE NOT NULL,
    total_loan_cost DECIMAL(6,2) NOT NULL,

    CONSTRAINT fK_loans_borrowers
                  FOREIGN KEY(borrower_no) REFERENCES  borrowers(borrower_no)



);
CREATE TABLE loan_dvds(
    loan_no VARCHAR(10)NOT NULL,
    dvd_no VARCHAR(10)NOT NULL,
    copy_no VARCHAR(10)NOT NULL,
    dvd_status VARCHAR(20)NOT NULL,
    actual_return_date DATE NULL,
    return_due_date DATE NOT NULL,
    shelf_position VARCHAR(20) NOT NULL,

    PRIMARY KEY (loan_no,dvd_no,copy_no),

    CONSTRAINT fk_loans_dvds_loans
                      FOREIGN KEY (loan_no)REFERENCES loans(loan_no),
    CONSTRAINT fk_loan_dvds_dvds
                      FOREIGN KEY (dvd_no)REFERENCES dvds(dvd_no)

);

/*borrower*/
INSERT INTO borrowers(borrower_no, borrower_name, borrower_address, borrower_status)
VALUES ('BN1721','Ben Jones','28 Loan Road,Nottingham NG3 3PB','ALLOWED');

/*dvds*/
INSERT INTO dvds (dvd_no, dvd_title, dvd_starring, dvd_year, rental_category, rental_cost)
VALUES
    ('DN198','Raiders Of The Lost Ark','Harrison Ford',1981,'adventure',3.50),
    ('DN9829','John Wick','Keanu Reeves',2014,'Action',4.50),
    ('DN050','Guardians','Chris Pratt',2014,'Superhero',4.50),
    ('DN0135','Prometheus','Noomi Rapace',2012,'Adventure',3.50),
    ('DN0171','Split','James McVoy',2016,'Horror',4.00),
    ('DN102','Sing','Matthew McConaughey',2016,'Animation',3.50),
    ('DN0188','Suicide Squad','Will Smith',2016,'Superhero',4.50),
    ('DN025','The Great Wall','Matt Damon',2016,'Action',4.00),
    ('DN0157','La La Land','Ryan Gosling',2016,'Comedy',4.50),
    ('DN0177','Mindhorn','Charlie Hunnam',2016,'Action',4.50),
    ('DN029','The Lost City Of Z','Charlie Hunnam',2016,'Action',4.00),
    ('DN0114','Passengers','Jennifer Lawrence',2016,'Adventure',3.50),
    ('DN085','Fantastic Beasts and Where to Find Them','Eddie Redmayne',2016,'Adventure',3.50),
    ('DN083','Hidden Figure','Taraji P. Henson',2016,'Biography',3.80),
    ('DN039','Rogue One','Felicity Jones',2016,'Action',4.50),
    ('DN0117','Moana','Auli''i Cravalho',2016,'Animation',3.50),
    ('DN0183','Colossal','Anne Hathaway',2016,'Action',4.00),
    ('DN100','The Secret Life Of Pets','Louis C.K.',2016,'Animation',3.50),
    ('DN070','Hacksaw Ridge','Andrew Garfield',2016,'Biography',3.80),
    ('DN048','Jason Bourne','Matt Damon',2016,'Action',4.00),
    ('DN0146','Lion','Dev Patel',2016,'Biography',3.80),
    ('DN062','Arrival','Amy Adams',2016,'Drama',4.20),
    ('DN0139','Gold','Matthew McConaughey',2016,'Adventure',4.20),
    ('DN0151','Manchester','Casey Affleck',2016,'Drama',4.20),
    ('DN056','Hounds Of Love','Emma Booth',2016,'Crime',3.80),
    ('DN0166','Independence','Liam Hemsworth',2016,'Action',4.00),
    ('DN033','Paris pieds nus','Fiona Gordon',2016,'Comedy',4.50),
    ('DN0108','Bahubali: The Beginning','Prabhas',2015,'Action',4.00),
    ('DN052','Dead Awake','Jocealin Donahue',2016,'Horror',4.00),
    ('DN0159','Bad Moms','Mila Kunis',2016,'Comedy',4.50),
    ('DN0167','Assassin''s Creed','Michael Fassbender',2016,'Action',4.00),
    ('DN0161','Why Him','Zoey Deutch',2016,'Comedy',4.50),
    ('DN013','Nocturnal','Amy Adams',2016,'Drama',4.20),
    ('DN0149','X-Men: Apocalypse','James McAvoy',2016,'Superhero',2.50),
    ('DN087','Deadpool','Ryan Reynolds',2016,'Superhero',4.50),
    ('DN0190','Resident Evil: The Final Chapter','Millia Jovovich',2016,'Action',4.50),
    ('DN0107','Captain America','Chris Evans',2016,'Superhero',4.50);







/*loans*/
INSERT INTO loans (loan_no, borrower_no, loan_date, total_loan_cost)
VALUES ('LN74857', 'BN1721', STR_TO_DATE('06/02/2002','%d/%m/%Y'), 8.00);

INSERT INTO loans (loan_no, borrower_no, loan_date, total_loan_cost)
VALUES ('LN74850', 'BN1721', STR_TO_DATE('06/02/2002','%d/%m/%Y'), 8.00);

/*loan dvds*/
INSERT INTO loan_dvds
(loan_no, dvd_no, copy_no, dvd_status, actual_return_date, return_due_date, shelf_position)
VALUES
    ('LN74857','DN198','CN1099','on_loan',NULL,
    STR_TO_DATE('13/02/2002','%d/%m/%Y'), 'AV123');





SELECT * FROM borrowers;
USE dvd_tables;
SELECT * FROM dvds;
USE dvd_tables;
SELECT * FROM loans;
SELECT * FROM loan_dvds;