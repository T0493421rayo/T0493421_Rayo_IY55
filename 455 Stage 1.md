<style>
</style>

| Module Code            | IY455                                   |
| ---------------------- | --------------------------------------- |
| Group                  | A                                       |
| Module Title           | Information Systems Analysis and Design |
| Assessment<br> Type    | Coursework Stage 1                      |
| Module Tutor<br> Name  | Sharmila<br> Majumdar                   |
| Student ID<br> Number  | P493421                                 |
| Date of<br> Submission | 11/2/26                                 |

☒ *I confirm that this assignment is my own work. Where I have
referred to academic sources, I have provided in-text citations and included
the sources in the final reference list.*

 ☒ *Where I have used AI, I have
cited and referenced appropriately.*

**1NF**

**Loan Table**

| Loan No.(PK) | Borrowe No. | Borrower Name | Borrower Address                | Borrower Total<br> Fine | Borrower Status | Loan Date  | Total loan cost |
| ------------ | ----------- | ------------- | ------------------------------- | ----------------------- | --------------- | ---------- | --------------- |
| LN74857      | BN1721      | Ben Jones     | 28 Low Road, Nottingham NG5 3PB | £0.00                   | Allowed         | 06/02/2002 | £8.00           |

Rental Table

| **Loan No.(PK)** | **Dvd No(PK)** | Dvd title                   | Dvd Starring  | Dvd year | Rental Cat | Rental cost | Copy No | Shelf Position | Dvd Status | Return Due Date |
| ---------------- | -------------- | --------------------------- | ------------- | -------- | ---------- | ----------- | ------- | -------------- | ---------- | --------------- |
| LN74857          | DN198          | Raiders of the<br> lost Ark | Harrison Ford | 1981     | Adventure  | 3.50        | CN1099  | AV123          | On loan    | 13/02/2002      |
| LN74857          | DN9829         | John Wick                   | Keanu Reeves  | 2014     | Action     | 4.50        | CN8739  | AC8728         | On loan    | 13/02/1002      |

**Loan No and DVD
No- Compound Key**

**2NF**

**Loan Table**

| Loan No.(PK) | Borrowe No. | Borrower Name | Borrower Address                | Borrower Total<br> Fine | Borrower Status | Loan Date  | Total loan cost |
| ------------ | ----------- | ------------- | ------------------------------- | ----------------------- | --------------- | ---------- | --------------- |
| LN74857      | BN1721      | Ben Jones     | 28 Low Road, Nottingham NG5 3PB | £0.00                   | Allowed         | 06/02/2002 | £8.00           |

**Loan-DVD table**

| **Loan No.(PK)** | **Dvd No(PK)** | Copy No | DVD status | Return Due Cost | Shelf position |
| ---------------- | -------------- | ------- | ---------- | --------------- | -------------- |
| LN74857          | DN198          | CN1099  | On loan    | 13/02/2002      | AV123          |
| LN74857          | DN9829         | CN8739  | On loan    | 13/02/1002      | AC8728         |

**DVD table**

| **Dvd No(PK)** | Dvd Title                   | Dvd starring  | Dvd year | Rental Category | Rental Cost |
| -------------- | --------------------------- | ------------- | -------- | --------------- | ----------- |
| DN198          | Raiders of the<br> lost ark | Harrison Ford | 1981     | Adventure       | 3.50        |
| DN9829         | John Wick                   | Keanu Reeseve | 2014     | Action          | 4.50        |

**3NF**

**Borrower table**

<style>
</style>

| Borrowe No(PK) | Borrower Name | Borrower Address                | Borrower Status |
| -------------- | ------------- | ------------------------------- | --------------- |
| BN1721         | Ben Jones     | 28 Low Road, Nottingham NG5 3PB | Allowed         |

Borrower No-Primary Key

**Loan table**

| Loan No.(PK) | Borrower No(FK) | Loan Date  | Total loan cost |
| ------------ | --------------- | ---------- | --------------- |
| LN74857      | BN1721          | 06/02/2002 | £8.00           |

Loan No-Primary Key

**Loan-DVD**

<style>
</style>

| **Loan No.(PK)** | Dvd No(FK) | Copy No | DVD status | Actual Return Date | Return Due Date | Shelf position |
| ---------------- | ---------- | ------- | ---------- | ------------------ | --------------- | -------------- |
| LN74857          | DN198      | CN1099  | On loan    |                    | 13/02/2002      | AV123          |
| LN74857          | DN9829     | CN8739  | On loan    |                    | 13/02/1002      | AC8728         |

Loan No+DVD No+Copy No-Compound Key

**Dvd table**

| **Dvd No(PK)** | Dvd Title                   | Dvd starring  | Dvd year | Rental Category | Rental Cost |
| -------------- | --------------------------- | ------------- | -------- | --------------- | ----------- |
| DN198          | Raiders of the<br> lost ark | Harrison Ford | 1981     | Adventure       | 3.50        |
| DN9829         | John Wick                   | Keanu Reeseve | 2014     | Action          | 4.50        |

DVD No-Primary Key

**2.**

**Normalisation**

Normalisation is the method used in representing data to prevent data redundancy and data integrity. Denis et al. (2020) suggest that it is a technique used by data analysts to determine the correctness of a program using a set of laid-down procedures that must be followed.

The normalisation process is done to produce various positive outcomes, especially in the presentation of a database. One of which is that it helps analysts in the analysis process to determine the entities from a given set that are not correctly formed. Moreover, it also helps in

selecting entities that could be potentially brought out of a file. According to NTIC(2026), Normalisation helps prevent repetition of data in order to present it in an organized form.

Despite the benefits of normalisation, it has some major drawbacks on the data organisation. According to Sharandi, A. (n.d.), normalisation is cumbersome and time-consuming because of the number of processes required in merging the tables. In addition to this, it is a complex task because analyst have to spend a good amount of time learning about the database if not it could lead to poorly optimized data representation.

3.

![h](C:\Users\Motunrayo\OneDrive\Pictures\Screenshots\Screenshot%202026-03-09%20111709.png)

**Reference List**

Dennis, A., Wixom,
B. and Roth, R. (2020). *Systems Analysis and Design, EMEA Edition*.
7th Edition ley Global Education UK: Retrieved from: [VitalSource
Bookshelf: Systems Analysis and Design, EMEA Edition](https://online.vitalsource.com/reader/books/9781119636144/epubcfi/6/20%5b%3Bvnd.vst.idref%3DAp02%5d!/4) . Accessed: [ Accessed
11 February 2026].

Sharandi,A (n.d). Drawbacks of normalization,Binus University School Of Information Systems. Retrieved from:[DRAWBACKS OF NORMALIZATION – School of Information Systems](https://sis.binus.ac.id/2018/01/17/drawbacks-of-normalization/) [Accessed 3 March 2026].

NTIC (2026). *Normalisation*  [VLE material  handouts].  Nottingham: NTIC. [Accessed 11 February 2026].
