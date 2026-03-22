USE dvd_tables;
SHOW DATABASES;

CREATE TABLE borrowers (
    borrower_no VARCHAR(10) PRIMARY KEY,
    borrower_name VARCHAR(100) NOT NULL,
    borrower_address VARCHAR(255),
    borrower_status VARCHAR(20),
    total_fine_cost DECIMAL(5,2)

);

CREATE TABLE dvds(
    dvd_no VARCHAR(10) PRIMARY KEY,
    dvd_title VARCHAR(100)NOT NULL,
    dvd_starring VARCHAR(100)NOT NULL,
    dvd_year INT NOT NULL,
    rental_category VARCHAR(50)NOT NULL,
    rental_cost DECIMAL(5,2)NOT NULL,
    rental_duration VARCHAR(20),
    fine_charged_per_day DECIMAL(5,2)
);


CREATE TABLE loans(
    loan_no VARCHAR(10)PRIMARY KEY,
    borrower_no VARCHAR(10)NOT NULL,
    loan_date DATE NOT NULL,
    total_loan_cost DECIMAL(6,2),

    CONSTRAINT fK_loans_borrowers
                  FOREIGN KEY(borrower_no) REFERENCES  borrowers(borrower_no)

);


CREATE TABLE loan_dvds(
    loan_no VARCHAR(10)NOT NULL,
    dvd_no VARCHAR(10)NOT NULL,
    copy_no VARCHAR(10)NOT NULL,
    dvd_status VARCHAR(20)NOT NULL,
    actual_return_date DATE NOT NULL,
    return_due_date DATE NOT NULL,
    shelf_position VARCHAR(20) NOT NULL,
    PRIMARY KEY (loan_no,dvd_no,copy_no),

    CONSTRAINT fk_loans_dvds_loans
                      FOREIGN KEY (loan_no)REFERENCES loans(loan_no),
    CONSTRAINT fk_loan_dvds_dvds
                      FOREIGN KEY (dvd_no)REFERENCES dvds(dvd_no)

);


/*borrower*/
INSERT INTO borrowers(borrower_no, borrower_name, borrower_address, borrower_status,total_fine_cost)
VALUES ('BN1721','Ben Jones','28 Loan Road,Nottingham NG3 3PB','ALLOWED',0.00),
    ('BN2001','Alex Morgan','12 Elm Street,NG1 4AB','ALLOWED',0,00),
    ('BN2002','James Turner','45 Willow Avenue,Nottingham NG2 5CD','ALLOWED',0.00),
    ('BN2003','Chloe Adams','78 Cedar Road ,Nottingham NG3 6EF','BANNED',10.00),
    ('BN2004','Robert Hughes','9 Maple Close,Nottingham NG4 7GH','ALLOWED',0.00),
    ('BN2005','Grace Bennette','33 Birch Lane, Nottingham NG5 8JK','ALLOWED',0.00),
    ('BN2006','Samuel Wright','21 Oak Crescent,Nottingham,NG6 9LM','ALLOWED',0.00),
    ('BN2007','Hannah Forest','56 Pine Groove, Nottingham, NG7 1NP','ALLOWED',0.00),
    ('BN2008','Oliver Twist','88 Cherry Drive,Nottingham NG8 2QR','BANNED',0.00),
    ('BN2009','Robin Hood','14 Ash Nottingham NG9 3ST','ALLOWED',0.00),
    ('BN2010','Daniel Murphy','67 Poplar Way,NG10 4UV','ALLOWED',0.00),
    ('BN2011','Sarah Collins','12 Maple Street, NG9 2LP','ALLOWED',0.00),
    ('BN2012','Micheal Brown','45 Willow Crescent, NG8 1BD','BANNED',0.00),
    ('BN2013','Emily Harris','78 Oak Avenue, NG7 6TR','ALLOWED',0.00),
    ('BN2014','Laura Wilson','9 Cedar Close, NG11 8PW','ALLOWED',0.00),
    ('BN2015','Matthew Baker','11 Rowan Street, NG12 5UR','ALLOWED',0.00),
    ('BN2016','Daniel Wright','29 Sycamore Court, NG2 7PL','ALLOWED',0.00),
    ('BN2017','Thomas Walker','64 Harwthorn Rise, NG1 4QW','ALLOWED',0.00),
    ('BN2018','Chloe Foster','72 Beech Avenue, NG13 8LP','ALLOWED',0.00),
    ('BN2019','Luke Edwards','80 Fir Street,NG20 8JL','BANNED',10.00),
    ('BN2020','Nathan Cooper','52 Chestnut Road, NG19 1DF','ALLOWED',0.00),
    ('BN2021','Megan Ward','67 Spruce Way, NG3 4GQ','ALLOWED',0.00),
    ('BN2022','Ryan Mitchell','93 Poplar Drive,NG16 2SW','ALLOWED',0.00),
    ('BN2023','Grace Phillips','14 Juniper Way,Nottingham, NG17 4UP','BANNED',10.00),
    ('BN2024','Christopher Adams','38 Linden Road,Nottingham, NG14 6TT','BANNED',0.00),
    ('BN2025','Tommy Dean','3 Foxfield Way,Nottingham, NG3 7AC','ALLOWED',0.00),
    ('BN2090','Harry Potter','8 Columbus Drive,Nottingham, NG1 9AJ','ALLOWED',0.00),
    ('BN2081','Timmy Turner','5 Main Way Street,Nottingham, NG7 9UI','ALLOWED',0.00),
    ('BN2041','Megan Win','9 Pinnock Way,Nottingham, NG3 6YI','ALLOWED',0.00),
    ('BN2071','Mark Fin','7 Adlder Close,Nottingham NG13 5TR','ALLOWED',0.00),
    ('BN2031','Charles Darwin','1 Roman Close,Nottingham NG4 8JS','BANNED',10.00),
    ('BN2035','Adams Smith','7A Birch Road,Nottingham, NG10 3QA','ALLOWED',0.00),
    ('BN2027','Mary Wolfhard','9A Mile End,Nottingham, NG4 IAM','ALLOWED',0.00),
    ('BN2065','Tim Ridge','8 Pluto Way, Nottingham, NG12 T61','ALLOWED',0.00),
    ('BN2070','Thomas Eddison','10 Uranus Drive,Nottingham,NG2 T21','ALLOWED',0.00),
    ('BN2051','Tim Burton','7 Mayflower, Nottingham, NG10 J43','ALLOWED',0.00);



/*dvds*/
INSERT INTO dvds (dvd_no, dvd_title, dvd_starring, dvd_year, rental_category, rental_cost,rental_duration,fine_charged_per_day)
VALUES
    ('DN198','Raiders Of The Lost Ark','Harrison Ford',1981,'adventure',3.50,7,1.00),
    ('DN9829','John Wick','Keanu Reeves',2014,'Action',4.50,3,1.50),
    ('DN050','Guardians','Chris Pratt',2014,'Superhero',4.50,3,2.00),
    ('DN0135','Prometheus','Noomi Rapace',2012,'Adventure',3.50,7,1.00),
    ('DN0171','Split','James McVoy',2016,'Horror',4.00,1,2.50),
    ('DN102','Sing','Matthew McConaughey',2016,'Animation',3.50,7,0.80),
    ('DN0188','Suicide Squad','Will Smith',2016,'Superhero',4.50,3,2.00),
    ('DN025','The Great Wall','Matt Damon',2016,'Action',4.00,3,1.50),
    ('DN0157','La La Land','Ryan Gosling',2016,'Comedy',4.50,3,1.20),
    ('DN0177','Mindhorn','Charlie Hunnam',2016,'Action',4.50,3,1.50),
    ('DN029','The Lost City Of Z','Charlie Hunnam',2016,'Action',4.00,3,1.50),
    ('DN0114','Passengers','Jennifer Lawrence',2016,'Adventure',3.50,7,1.00),
    ('DN085','Fantastic Beasts and Where to Find Them','Eddie Redmayne',2016,'Adventure',3.50,7,1.00),
    ('DN083','Hidden Figure','Taraji P. Henson',2016,'Biography',3.80,7,1.00),
    ('DN039','Rogue One','Felicity Jones',2016,'Action',4.50,3,1.50),
    ('DN0117','Moana','Auli''i Cravalho',2016,'Animation',3.50,7,0.80),
    ('DN0183','Colossal','Anne Hathaway',2016,'Action',4.00,3,1.50),
    ('DN100','The Secret Life Of Pets','Louis C.K.',2016,'Animation',3.50,7,0.80),
    ('DN070','Hacksaw Ridge','Andrew Garfield',2016,'Biography',3.80,7,1.00),
    ('DN048','Jason Bourne','Matt Damon',2016,'Action',4.00,3,1.50),
    ('DN0146','Lion','Dev Patel',2016,'Biography',3.80,7,1.00),
    ('DN062','Arrival','Amy Adams',2016,'Drama',4.20,7,1.20),
    ('DN0139','Gold','Matthew McConaughey',2016,'Adventure',4.20,7,1.00),
    ('DN0151','Manchester','Casey Affleck',2016,'Drama',4.20,7,1.20),
    ('DN056','Hounds Of Love','Emma Booth',2016,'Crime',3.80,3,1.50),
    ('DN0166','Independence','Liam Hemsworth',2016,'Action',4.00,3,1.50),
    ('DN033','Paris pieds nus','Fiona Gordon',2016,'Comedy',4.50,3.00,1.20),
    ('DN0108','Bahubali: The Beginning','Prabhas',2015,'Action',4.00,3,1.50),
    ('DN052','Dead Awake','Jocealin Donahue',2016,'Horror',4.00,1,2.50),
    ('DN0159','Bad Moms','Mila Kunis',2016,'Comedy',4.50,3,1.20),
    ('DN0167','Assassin''s Creed','Michael Fassbender',2016,'Action',4.00,2,1.50),
    ('DN0161','Why Him','Zoey Deutch',2016,'Comedy',4.50,3,1.20),
    ('DN013','Nocturnal','Amy Adams',2016,'Drama',4.20,7,1.20),
    ('DN0149','X-Men: Apocalypse','James McAvoy',2016,'Superhero',2.50,3,2.00),
    ('DN087','Deadpool','Ryan Reynolds',2016,'Superhero',4.50,3,2.00),
    ('DN0190','Resident Evil: The Final Chapter','Millia Jovovich',2016,'Action',4.50,3,1.50),
    ('DN0107','Captain America','Chris Evans',2016,'Superhero',4.50,3,2.00);



/*loans*/
INSERT INTO loans (loan_no, borrower_no, loan_date)
VALUES
    ('LN74857', 'BN1721', STR_TO_DATE('06/02/2002','%d/%m/%Y')),
    ('LN74850', 'BN1721', STR_TO_DATE('06/02/2002','%d/%m/%Y')),
    ('LN80001', 'BN2001', STR_TO_DATE('10/03/2002','%d/%m/%Y')),
    ('LN80002', 'BN2002', STR_TO_DATE('11/03/2002','%d/%m/%Y')),
    ('LN80003', 'BN2004', STR_TO_DATE('12/03/2002','%d/%m/%Y')),
    ('LN80004', 'BN2005', STR_TO_DATE('13/03/2002','%d/%m/%Y')),
    ('LN80005', 'BN2006', STR_TO_DATE('14/03/2002','%d/%m/%Y')),
    ('LN80006', 'BN2007', STR_TO_DATE('15/03/2002','%d/%m/%Y')),
    ('LN80007', 'BN2008', STR_TO_DATE('16/03/2002','%d/%m/%Y')),
    ('LN80008', 'BN2009', STR_TO_DATE('17/03/2002','%d/%m/%Y')),
    ('LN80009', 'BN2010', STR_TO_DATE('18/03/2002','%d/%m/%Y')),
    ('LN80010', 'BN2011', STR_TO_DATE('19/03/2002','%d/%m/%Y')),
    ('LN80011', 'BN2013', STR_TO_DATE('20/03/2002','%d/%m/%Y')),
    ('LN80012', 'BN2015', STR_TO_DATE('21/03/2002','%d/%m/%Y')),
    ('LN80013', 'BN2016', STR_TO_DATE('22/03/2002','%d/%m/%Y')),
    ('LN80014', 'BN2017', STR_TO_DATE('23/03/2002','%d/%m/%Y')),
    ('LN80015', 'BN2018', STR_TO_DATE('24/03/2002','%d/%m/%Y')),
    ('LN80016', 'BN2020', STR_TO_DATE('25/03/2002','%d/%m/%Y')),
    ('LN80017', 'BN2021', STR_TO_DATE('26/03/2002','%d/%m/%Y')),
    ('LN80018', 'BN2022', STR_TO_DATE('27/03/2002','%d/%m/%Y')),
    ('LN80019', 'BN2025', STR_TO_DATE('28/03/2002','%d/%m/%Y')),
    ('LN80020', 'BN2027', STR_TO_DATE('29/04/2002','%d/%m/%Y')),
    ('LN80021', 'BN2031', STR_TO_DATE('30/04/2002','%d/%m/%Y')),
    ('LN80052', 'BN2035', STR_TO_DATE('01/05/2002','%d/%m/%Y')),
    ('LN80053', 'BN2041', STR_TO_DATE('02/05/2002','%d/%m/%Y')),
    ('LN80054', 'BN2035', STR_TO_DATE('03/05/2002','%d/%m/%Y')),
    ('LN80055', 'BN2051', STR_TO_DATE('04/05/2002','%d/%m/%Y')),
    ('LN80056', 'BN2065', STR_TO_DATE('06/05/2002','%d/%m/%Y')),
    ('LN80057', 'BN2070', STR_TO_DATE('07/05/2002','%d/%m/%Y')),
    ('LN80058', 'BN2071', STR_TO_DATE('08/05/2002','%d/%m/%Y')),
    ('LN80059', 'BN2081', STR_TO_DATE('09/05/2002','%d/%m/%Y')),
    ('LN80060', 'BN2090', STR_TO_DATE('10/05/2002','%d/%m/%Y')),
    ('LN80061', 'BN2090', STR_TO_DATE('12/05/2002','%d/%m/%Y')),
    ('LN80062', 'BN2035', STR_TO_DATE('10/05/2002','%d/%m/%Y')),
    ('LN80063', 'BN2018', STR_TO_DATE('12/05/2002','%d/%m/%Y')),
    ('LN90003', 'BN2012', STR_TO_DATE('12/05/2002','%d/%m/%Y'));



/*loan dvds*/
INSERT INTO loan_dvds
(loan_no, dvd_no, copy_no, dvd_status, actual_return_date, return_due_date, shelf_position)
VALUES
    ('LN74857','DN198','CN1099','on_loan',NULL,
    STR_TO_DATE('13/02/2002','%d/%m/%Y'), 'AV123');

INSERT INTO loan_dvds (loan_no, dvd_no, copy_no, dvd_status, actual_return_date, return_due_date, shelf_position)
VALUES
    ('LN74850','DN9829','CN2101','returned',STR_TO_DATE('10/02/2002','%d/%m/%Y'),STR_TO_DATE('09/02/2002','%d/%m/%Y'),'BX201'),
    ('LN80001','DN050','CN3001','returned', STR_TO_DATE('15/03/2002','%d/%m/%Y'), STR_TO_DATE('14/03/2002','%d/%m/%Y'),'SH110'),
    ('LN80002','DN0135','CN3002','returned', STR_TO_DATE('10/02/2002','%d/%m/%Y'),STR_TO_DATE('09/02/2002','%d/%m/%Y'),'SH111'),
    ('LN80003','DN0171','CN3003','returned',STR_TO_DATE('20/03/2002','%d/%m/%Y'), STR_TO_DATE('19/03/2002','%d/%m/%Y'),'SH112'),
    ('LN80004','DN102','CN3004','returned',STR_TO_DATE('17/03/2002','%d/%m/%Y'),STR_TO_DATE('16/03/2002','%d/%m/%Y'),'AV201'),
    ('LN80005','DN0188','CN3005','returned',STR_TO_DATE('22/03/2002','%d/%m/%Y'),STR_TO_DATE('21/03/2002','%d/%m/%Y'),'AV202'),
    ('LN80006','DN025','CN3006','returned',STR_TO_DATE('22/03/2002','%d/%m/%Y'),STR_TO_DATE('20/03/2002','%d/%m/%Y'),'BX330'),
    ('LN80007','DN0157','CN3007','returned',STR_TO_DATE('25/03/2002','%d/%m/%Y'),STR_TO_DATE('23/03/2002','%d/%m/%Y'),'BX331'),
    ('LN80008','DN0177','CN3008','returned',STR_TO_DATE('27/03/2002','%d/%m/%Y'),STR_TO_DATE('26/03/2002','%d/%m/%Y'),'BX332'),
    ('LN80009','DN029','CN3009','returned',STR_TO_DATE('28/03/2002','%d/%m/%Y'),STR_TO_DATE('27/03/2002','%d/%m/%Y'),'SH210'),
    ('LN80010','DN0114','CN3010','returned',STR_TO_DATE('29/03/2002','%d/%m/%Y'),STR_TO_DATE('28/03/2002','%d/%m/%Y'),'SH211'),
    ('LN80021','DN0107','CN8080','overdue',STR_TO_DATE('28/05/2002','%d/%m/%Y'),STR_TO_DATE('15/05/2002','%d/%m/%Y'),'BD007'),
    ('LN80021','DN0177','CN6120','overdue',STR_TO_DATE('04/05/2002','%d/%m/%Y'),STR_TO_DATE('03/04/2002','%d/%m/%Y'),'BX106'),
    ('LN90003','DN102','CN6006','overdue',STR_TO_DATE('20/05/2002','%d/%m/%Y'),STR_TO_DATE('14/05/2002','%d/%m/%Y'),'BD006'),
    ('LN80012','DN083','CN3012','returned',STR_TO_DATE('02/04/2002','%d/%m/%Y'),STR_TO_DATE('01/04/2002','%d/%m/%Y'),'AV302'),
    ('LN80016','DN100','CN3016','returned',STR_TO_DATE('07/04/2002','%d/%m/%Y'),STR_TO_DATE('06/04/2002','%d/%m/%Y'),'SH402'),
    ('LN80011','DN085','CN7001','returned', STR_TO_DATE('22/03/2002','%d/%m/%Y'),STR_TO_DATE('21/03/2002','%d/%m/%Y'),'SH501'),
    ('LN80013','DN039','CN7002','returned', STR_TO_DATE('24/03/2002','%d/%m/%Y'),STR_TO_DATE('23/03/2002','%d/%m/%Y'),'SH502'),
    ('LN80014','DN0117','CN7003','returned',STR_TO_DATE('25/03/2002','%d/%m/%Y'),STR_TO_DATE('24/03/2002','%d/%m/%Y'),'SH503'),
    ('LN80015','DN0183','CN7004','returned', STR_TO_DATE('26/03/2002','%d/%m/%Y'),STR_TO_DATE('25/03/2002','%d/%m/%Y'),'SH504'),
    ('LN80017','DN070','CN7005','overdue',STR_TO_DATE('30/03/2002','%d/%m/%Y'), STR_TO_DATE('27/03/2002','%d/%m/%Y'),'OV201'),
    ('LN80018','DN048','CN7006','returned',STR_TO_DATE('29/03/2002','%d/%m/%Y'),STR_TO_DATE('28/03/2002','%d/%m/%Y'),'SH505'),
    ('LN80019','DN0146','CN7007','overdue', STR_TO_DATE('31/03/2002','%d/%m/%Y'),STR_TO_DATE('28/03/2002','%d/%m/%Y'),'OV202'),
    ('LN80020','DN062','CN7008','returned',STR_TO_DATE('01/05/2002','%d/%m/%Y'),STR_TO_DATE('30/04/2002','%d/%m/%Y'),'SH506'),
    ('LN80052','DN0139','CN7009','returned',STR_TO_DATE('03/05/2002','%d/%m/%Y'),STR_TO_DATE('02/05/2002','%d/%m/%Y'),'SH507'),
    ('LN80053','DN0151','CN7010','overdue',STR_TO_DATE('05/05/2002','%d/%m/%Y'), STR_TO_DATE('03/05/2002','%d/%m/%Y'),'OV203'),
    ('LN80054','DN056','CN7011','returned', STR_TO_DATE('04/05/2002','%d/%m/%Y'), STR_TO_DATE('03/05/2002','%d/%m/%Y'),'SH508'),
    ('LN80055','DN0166','CN7012','returned',STR_TO_DATE('06/05/2002','%d/%m/%Y'),STR_TO_DATE('05/05/2002','%d/%m/%Y'),'SH509'),
    ('LN80056','DN033','CN7013','overdue', STR_TO_DATE('08/05/2002','%d/%m/%Y'),STR_TO_DATE('06/05/2002','%d/%m/%Y'),'OV204'),
    ('LN80057','DN0108','CN7014','returned', STR_TO_DATE('08/05/2002','%d/%m/%Y'), STR_TO_DATE('07/05/2002','%d/%m/%Y'),'SH510'),
    ('LN80058','DN052','CN7015','returned',STR_TO_DATE('09/05/2002','%d/%m/%Y'),STR_TO_DATE('08/05/2002','%d/%m/%Y'),'SH511'),
    ('LN80059','DN0161','CN7016','overdue',STR_TO_DATE('11/05/2002','%d/%m/%Y'), STR_TO_DATE('09/05/2002','%d/%m/%Y'),'OV205'),
    ('LN80060','DN013','CN7017','returned', STR_TO_DATE('11/05/2002','%d/%m/%Y'),STR_TO_DATE('10/05/2002','%d/%m/%Y'),'SH512'),
    ('LN80061','DN0149','CN7018','returned', STR_TO_DATE('13/05/2002','%d/%m/%Y'),STR_TO_DATE('12/05/2002','%d/%m/%Y'),'SH513'),
    ('LN80062','DN087','CN7019','overdue', STR_TO_DATE('14/05/2002','%d/%m/%Y'),STR_TO_DATE('12/05/2002','%d/%m/%Y'),'OV206'),
    ('LN80063','DN0190','CN7020','returned',STR_TO_DATE('14/05/2002','%d/%m/%Y'),STR_TO_DATE('12/05/2002','%d/%m/%Y'),'SH514');


USE dvd_tables;
SELECT * FROM borrowers;

USE dvd_tables;
SELECT * FROM dvds;

USE dvd_tables;
SELECT * FROM loans;

USE dvd_tables;
SELECT * FROM loan_dvds;


UPDATE loans
SET total_loan_cost = 0.00
WHERE total_loan_cost IS NULL;

UPDATE loans l
JOIN (
    SELECT ld.loan_no, SUM(d.rental_cost) AS total_cost
    FROM loan_dvds ld
    JOIN dvds d ON ld.dvd_no = d.dvd_no
    GROUP BY ld.loan_no
) AS x ON l.loan_no = x.loan_no
SET l.total_loan_cost = x.total_cost
WHERE l.loan_no = x.loan_no;
