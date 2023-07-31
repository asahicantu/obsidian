USE sys;
CREATE TABLE Peoples(
    firstname VARCHAR(20) NOT NULL,
    lastname VARCHAR(20) NOT NULL,
    address VARCHAR(20) NOT NULL,
    city VARCHAR(20) NOT NULL
);

INSERT INTO Peoples VALUES('John', 'Doe', '123 Main St', 'Anytown');
INSERT INTO Peoples VALUES('Jane', 'Doe', '124 Main St', 'Anytown');
