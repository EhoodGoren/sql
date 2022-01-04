CREATE TABLE Event (
    etype char(30),
    description char(200),
    PRIMARY KEY (etype)
);

CREATE TABLE City (
    cname char(30),
    country char(30),
    population int,
    PRIMARY KEY (cname)
);

CREATE TABLE Disaster (
    cname char(30),
    year char(30),
    etype char(30),
    casualties int,
    FOREIGN KEY (cname) REFERENCES City (cname)
);

CREATE TABLE Prediction (
    cname char(30),
    etype char(30),
    casualties int,
    FOREIGN KEY (cname) REFERENCES City (cname),
    FOREIGN KEY (etype) REFERENCES Event (etype)
);

CREATE TABLE Measures (
    etype char(30),
    provider char(30),
    cost int,
    percent int,
    FOREIGN KEY (etype) REFERENCES Event (etype)
);
