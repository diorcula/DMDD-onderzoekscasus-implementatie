insert into LAND
values	('Andorra'),
		('Belgie'),
		('Croatie'),
		('Duitsland'),
		('Engeland')

insert into BEDRIJF
values	('bedrijfA', 'bedrijfA', 'Andorra'),
		('bedrijfB', 'bedrijfB', 'Belgie'),
		('bedrijfC', 'bedrijfC', 'Croatie'),
		('bedrijfD', 'bedrijfD', 'Duitsland'),
		('bedrijfE', 'bedrijfE', 'Engeland')

insert into SCHIP
values	('Artemis', 'bedrijfA'),
		('Borealis', 'bedrijfB'),
		('Chronos', 'bedrijfC'),
		('Dionysus', 'bedrijfD'),
		('Eros', 'bedrijfE')

insert into SCHEEPSVLAG
values	('Artemis', 'Andorra', '2008-11-11', '2011-05-16'),
		('Borealis', 'Belgie', '2007-11-25', '2009-10-19'),
		('Chronos', 'Croatie', '2008-09-12', '2020-06-07'),
		('Dionysus', 'Duitsland', '2003-08-09', '2010-10-10'),
		('Eros', 'Engeland', '2001-11-07', '2007-12-29')

insert into VISLICENTIE
values	('Artemis', 'Andorra', '2008-11-11', 'ZEE', '2011-05-16', 1939485632),
		('Borealis', 'Belgie', '2007-11-25', 'KUST', '2009-10-19', 2938475960),
		('Chronos', 'Croatie', '2008-09-12', 'BINNEN', '2020-06-07', 3948274563),
		('Dionysus', 'Duitsland', '2003-08-09', 'ZEE', '2010-10-10', 5679834568),
		('Eros', 'Engeland', '2001-11-07', 'ZEE', '2007-12-29', 96857463524)

insert into VANGST
values	('Artemis', 'Andorra', '2009-12-12', 'Ansjovis', 193948563),
		('Borealis', 'Belgie', '2008-12-26', 'Baars',  293847596),
		('Chronos', 'Croatie', '2009-10-13', 'Coquille',  394827456),
		('Dionysus', 'Duitsland', '2004-09-10', 'Dorade',  567983456),
		('Eros', 'Engeland', '2002-12-08', 'Europese kreeft', 9685746352)