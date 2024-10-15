CREATE TABLE IF NOT EXISTS genre (
	genreid SERIAL PRIMARY KEY,
	genrename VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS genresinger (
	genreid INTEGER REFERENCES genre(genreid),
	singerid INTEGER REFERENCES singer(singerid)
);


CREATE TABLE IF NOT EXISTS singer (
	singerid SERIAL PRIMARY KEY,
	singername VARCHAR(50) NOT NULL
);


CREATE TABLE IF NOT EXISTS album (
	albumid SERIAL PRIMARY KEY,
	albumname VARCHAR(50) NOT null,
	year INTEGER check(year>1900)
);


CREATE TABLE IF NOT EXISTS singrealbum (
	albumid INTEGER REFERENCES album(albumid),
	singerid INTEGER REFERENCES singer(singerid)
);


CREATE TABLE IF NOT EXISTS track (
	trackid SERIAL PRIMARY KEY,
	trackname VARCHAR(50) NOT null,
	duration INTEGER,
	albumid INTEGER REFERENCES album(albumid)
);


CREATE TABLE IF NOT EXISTS collection (
	collectionid SERIAL PRIMARY KEY,
	collectionname VARCHAR(50) NOT null,
	year INTEGER check(year>1900)
);


CREATE TABLE IF NOT EXISTS SongCollection (
	trackid INTEGER REFERENCES track(trackid),
	collectionid INTEGER REFERENCES collection(collectionid)
);






