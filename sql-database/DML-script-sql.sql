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
		('bedrijfE', 'bedrijfE', 'Engeland'),
		('bedrijfF', 'bedrijfE', 'Duitsland')

insert into SCHIP
values	('Artemis', 'bedrijfA'),
		('Borealis', 'bedrijfB'),
		('Chronos', 'bedrijfC'),
		('Dionysus', 'bedrijfD'),
		('Eros', 'bedrijfE'),
		('Hercules', 'bedrijfE'),
		('Davies', 'bedrijfF')

insert into SCHEEPSVLAG
values	('Artemis', 'Andorra', '2008-11-11', '2011-05-16'),
		('Borealis', 'Belgie', '2007-11-25', '2009-10-19'),
		('Chronos', 'Croatie', '2008-09-12', '2020-06-07'),
		('Dionysus', 'Duitsland', '2003-08-09', '2010-10-10'),
		('Eros', 'Engeland', '2001-11-07', '2007-12-29'),
		('Hercules', 'Duitsland', '2001-4-12', '2007-12-29'),
		('Davies', 'Belgie', '2006-01-07', '2009-11-17')

insert into VISLICENTIE
values	('Artemis', 'Andorra', '2008-11-11', 'ZEE', '2011-05-16', 1939485632),
		('Borealis', 'Belgie', '2007-11-25', 'KUST', '2009-10-19', 2938475960),
		('Chronos', 'Croatie', '2008-09-12', 'BINNEN', '2020-06-07', 3948274563),
		('Dionysus', 'Duitsland', '2003-08-09', 'ZEE', '2010-10-10', 5679834568),
		('Eros', 'Engeland', '2001-11-07', 'ZEE', '2007-12-29', 96857463524),
		('Hercules', 'Engeland', '2001-11-07', 'KUST', '2007-12-29', 96857463524),
		('Davies', 'Engeland', '2001-11-07', 'BINNEN', '2007-12-29', 96857463524)

insert into VANGST
values	('Artemis', 'Andorra', '2009-12-12', 'Ansjovis', 193948563),
		('Borealis', 'Belgie', '2008-12-26', 'Baars',  293847596),
		('Chronos', 'Croatie', '2009-10-13', 'Coquille',  394827456),
		('Dionysus', 'Duitsland', '2004-09-10', 'Dorade',  567983456),
		('Eros', 'Engeland', '2002-12-08', 'Europese kreeft', 9685746352),
		('Hercules', 'Engeland', '2002-12-08', 'Coquille', 123882131),
		('Davies', 'Engeland', '2002-12-08', 'Baars', 21939213),
		('Davies', 'Duitsland', '2002-12-18', 'Baars', 53246712),
		('Eros', 'Andorra', '2002-12-12', 'Europese kreeft', 83837274),
		('Eros', 'Engeland', '2002-12-14', 'Anjovis', 12384821)