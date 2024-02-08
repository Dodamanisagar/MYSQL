/*
To delete an existing index from a table, you use the DROP INDEX statement as follows:
DROP INDEX index_name 
ON table_name
[algorithm_option | lock_option];
*/
drop index jobTitle
on employees;

CREATE TABLE leads(
    lead_id INT AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    information_source VARCHAR(255),
    INDEX name(first_name,last_name),
    UNIQUE email(email),
    PRIMARY KEY(lead_id)
);

DROP INDEX name ON leads;

DROP INDEX email ON leads
ALGORITHM = INPLACE 
LOCK = DEFAULT;


CREATE TABLE tab(
    pk INT PRIMARY KEY,
    c VARCHAR(10)
);

DROP INDEX `PRIMARY` ON tab;