CREATE TABLE Coach (
    id int,
    name char(30),
    mail char(30),
    phone char(30),
    from_date date,
    hourly_rate int,
    institute char(30),
    PRIMARY KEY (id)
);

CREATE TABLE Types (
    type_name char(30),
    description char(60),
    PRIMARY KEY (type_name)
);

CREATE TABLE Coaches (
    coach_id int,
    type_name char(30),
    FOREIGN KEY (coach_id) REFERENCES Coach (id),
    FOREIGN KEY (type_name) REFERENCES Types (type_name)
);

CREATE TABLE Clients (
    c_id int,
    name char(30),
    address char(30),
    phone char(30),
    PRIMARY KEY (c_id)
);

CREATE TABLE Training_sequence (
    c_id int,
    start_date date,
    coach_id int,
    type_name char(30),
    hours int,
    FOREIGN KEY (c_id) REFERENCES Clients (c_id),
    PRIMARY KEY (start_date)
);
