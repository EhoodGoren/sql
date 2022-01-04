INSERT INTO Event VALUES
("earthquake","from 5 in Richter scale"),
("fire","burning that produces flames that send out heat and light and sometimes smoke"),
("flood","overflowing of a large amount of water over what is normally dry land"),
("tornado","funnel-shaped vortex of violently rotating winds advancing beneath a large storm system"),
("volcano","lava, ash, rock and gasses eruption");

INSERT INTO City VALUES
("Hilo","Hawaii",43000),
("Kagoshima","Japan",700000),
("Naples","Italy",3000000),
("Pasto","Columbia",450000),
("Tsfat","Israel",3600);

INSERT INTO Disaster VALUES
("Hilo","1903","volcano",500),
("Hilo","1914","volcano",300),
("Hilo","1926","volcano",20),
("Hilo","1971","tornado",85),
("Hilo","1984","volcano",50),
("Hilo","1989","tornado",50),
("Hilo","2002","tornado",5),
("Hilo","2011","tornado",70),
("Hilo","2015","tornado",50),
("Kagoshima","1914","earthquake",35),
("Kagoshima","1915","volcano",100),
("Kagoshima","1974","volcano",50),
("Kagoshima","1993","flood",2600),
("Kagoshima","2017","volcano",20),
("Naples","1906","volcano",50),
("Naples","1944","volcano",35),
("Naples","1979","volcano",50),
("Naples","1998","flood",200),
("Pasto","1988","volcano",30),
("Pasto","1993","volcano",45),
("Pasto","2002","volcano",15),
("Pasto","2008","volcano",30),
("Pasto","2010","volcano",30),
("Pasto","2018","flood",15),
("Tsfat","1837","earthquake",5000);

INSERT INTO Prediction VALUES
("Hilo","flood",100),
("Hilo","tornado",400),
("Kagoshima","fire",320),
("Naples","volcano",50),
("Pasto","tornado",200),
("Pasto","volcano",500),
("Tsfat","earthquake",1000);

INSERT INTO Measures VALUES
("flood","fire" "department",1000000,60),
("tornado","army",300000,20),
("tornado","police",400000,50),
("volcano","army",600000,90),
("volcano","fire" "department",500000,85),
("volcano","police",200000,70);
