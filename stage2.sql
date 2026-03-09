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
VALUES ('BN1721','Ben Jones','28 Loan Road,Nottingham NG3 3PB','ALLOWED'),
    ('BN2001','Alex Morgan','12 Elm Street,NG1 4AB','ALLOWED'),
    ('BN2002','James Turner','45 Willow Avenue,Nottingham NG2 5CD','ALLOWED'),
    ('BN2003','Chloe Adams','78 Cedar Road ,Nottingham NG3 6EF','BANNED'),
    ('BN2004','Robert Hughes','9 Maple Close,Nottingham NG4 7GH','ALLOWED'),
    ('BN2005','Grace Bennette','33 Birch Lane, Nottingham NG5 8JK','ALLOWED'),
    ('BN2006','Samuel Wright','21 Oak Crescent,Nottingham,NG6 9LM','ALLOWED'),
    ('BN2007','Hannah Forest','56 Pine Groove, Nottingham, NG7 1NP','ALLOWED'),
    ('BN2008','Oliver Twist','88 Cherry Drive,Nottingham NG8 2QR','BANNED'),
    ('BN2009','Robin Hood','14 Ash Nottingham NG9 3ST','ALLOWED'),
    ('BN2010','Daniel Murphy','67 Poplar Way,NG10 4UV','ALLOWED'),
    ('BN2011','Sarah Collins','12 Maple Street, NG9 2LP','ALLOWED'),
    ('BN2012','Micheal Brown','45 Willow Crescent, NG8 1BD','BANNED'),
    ('BN2013','Emily Harris','78 Oak Avenue, NG7 6TR','ALLOWED'),
    ('BN2014','Laura Wilson','9 Cedar Close, NG11 8PW','ALLOWED'),
    ('BN2015','Matthew Baker','11 Rowan Street, NG12 5UR','ALLOWED'),
    ('BN2016','Daniel Wright','29 Sycamore Court, NG2 7PL','ALLOWED'),
    ('BN2017','Thomas Walker','64 Harwthorn Rise, NG1 4QW','ALLOWED'),
    ('BN2018','Chloe Foster','72 Beech Avenue, NG13 8LP','ALLOWED'),
    ('BN2019','Luke Edwards','80 Fir Street,NG20 8JL','BANNED'),
    ('BN2020','Nathan Cooper','52 Chestnut Road, NG19 1DF','ALLOWED'),
    ('BN2021','Megan Ward','67 Spruce Way, NG3 4GQ','ALLOWED'),
    ('BN2022','Ryan Mitchell','93 Poplar Drive,NG16 2SW','ALLOWED'),
    ('BN2023','Grace Phillips','14 Juniper Way,Nottingham, NG17 4UP','BANNED'),
    ('BN2024','Christopher Adams','38 Linden Road,Nottingham, NG14 6TT','BANNED'),
    ('BN2025','Tommy Dean','3 Foxfield Way,Nottingham, NG3 7AC','ALLOWED'),
    ('BN2090','Harry Potter','8 Columbus Drive,Nottingham, NG1 9AJ','ALLOWED'),
    ('BN2081','Timmy Turner','5 Main Way Street,Nottingham, NG7 9UI','ALLOWED'),
    ('BN2041','Megan Win','9 Pinnock Way,Nottingham, NG3 6YI','ALLOWED'),
    ('BN2071','Mark Fin','7 Adlder Close,Nottingham NG13 5TR','ALLOWED'),
    ('BN2031','Charles Darwin','1 Roman Close,Nottingham NG4 8JS','BANNED'),
    ('BN2035','Adams Smith','7A Birch Road,Nottingham, NG10 3QA','ALLOWED'),
    ('BN2027','Mary Wolfhard','9A Mile End,Nottingham, NG4 IAM','ALLOWED'),
    ('BN2065','Tim Ridge','8 Pluto Way, Nottingham, NG12 T61','ALLOWED'),
    ('BN2070','Thomas Eddison','10 Uranus Drive,Nottingham,NG2 T21','ALLOWED'),
    ('BN2051','Tim Burton','7 Mayflower, Nottingham, NG10 J43','ALLOWED');



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
VALUES ('LN74857', 'BN1721', STR_TO_DATE('06/02/2002','%d/%m/%Y'), 8.00),
       ('LN74850', 'BN1721', STR_TO_DATE('06/02/2002','%d/%m/%Y'), 8.00);

INSERT INTO loans(loan_no, borrower_no, loan_date, total_loan_cost)
VALUES
    ('LN80001', 'BN2001', STR_TO_DATE('10/03/2002','%d/%m/%Y'), 7.00),
    ('LN80002', 'BN2002', STR_TO_DATE('11/03/2002','%d/%m/%Y'), 4.50),
    ('LN80003', 'BN2004', STR_TO_DATE('12/03/2002','%d/%m/%Y'), 9.00),
    ('LN80004', 'BN2005', STR_TO_DATE('13/03/2002','%d/%m/%Y'), 3.50),
    ('LN80005', 'BN2006', STR_TO_DATE('14/03/2002','%d/%m/%Y'), 16.00),
    ('LN80006', 'BN2007', STR_TO_DATE('15/03/2002','%d/%m/%Y'), 4.00),
    ('LN80007', 'BN2008', STR_TO_DATE('16/03/2002','%d/%m/%Y'), 8.50),
    ('LN80008', 'BN2009', STR_TO_DATE('17/03/2002','%d/%m/%Y'), 6.00),
    ('LN80009', 'BN2010', STR_TO_DATE('18/03/2002','%d/%m/%Y'), 5.00),
    ('LN80010', 'BN2011', STR_TO_DATE('19/03/2002','%d/%m/%Y'), 7.50),
    ('LN80011', 'BN2013', STR_TO_DATE('20/03/2002','%d/%m/%Y'),7.00),
    ('LN80012', 'BN2015', STR_TO_DATE('21/03/2002','%d/%m/%Y'), 8.00),
    ('LN80013', 'BN2016', STR_TO_DATE('22/03/2002','%d/%m/%Y'), 4.50),
    ('LN80014', 'BN2017', STR_TO_DATE('23/03/2002','%d/%m/%Y'), 8.00),
    ('LN80015', 'BN2018', STR_TO_DATE('24/03/2002','%d/%m/%Y'),4.00),
    ('LN80016', 'BN2020', STR_TO_DATE('25/03/2002','%d/%m/%Y'), 8.00),
    ('LN80017', 'BN2021', STR_TO_DATE('26/03/2002','%d/%m/%Y'), 5.00),
    ('LN80018', 'BN2022', STR_TO_DATE('27/03/2002','%d/%m/%Y'), 8.00),
    ('LN80019', 'BN2025', STR_TO_DATE('28/03/2002','%d/%m/%Y'), 9.00),
    ('LN80020', 'BN2027', STR_TO_DATE('29/04/2002','%d/%m/%Y'), 7.10),
    ('LN80021', 'BN2031', STR_TO_DATE('30/04/2002','%d/%m/%Y'), 6.80),
    ('LN80052', 'BN2035', STR_TO_DATE('1/05/2002','%d/%m/%Y'), 8.90),
    ('LN80053', 'BN2041', STR_TO_DATE('2/05/2002','%d/%m/%Y'), 10.00),
    ('LN80054', 'BN80051', STR_TO_DATE('3/05/2002','%d/%m/%Y'), 7.00);









/*loan dvds*/
INSERT INTO loan_dvds
(loan_no, dvd_no, copy_no, dvd_status, actual_return_date, return_due_date, shelf_position)
VALUES
    ('LN74857','DN198','CN1099','on_loan',NULL,
    STR_TO_DATE('13/02/2002','%d/%m/%Y'), 'AV123');




USE dvd_tables;
SELECT * FROM borrowers;
USE dvd_tables;
SELECT * FROM dvds;
USE dvd_tables;
SELECT * FROM loans;
SELECT * FROM loan_dvds;



