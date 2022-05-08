CREATE DATABASE BIBLIOTEKA;

CREATE TABLE AUTOR (
	id_autora SERIAL PRIMARY KEY,
	imie VARCHAR (50) UNIQUE NOT NULL,
    nazwisko VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO autor (id_autora, imie, nazwisko) VALUES (1, 'Maricn', 'Adamiec');
INSERT INTO autor (id_autora, imie, nazwisko) VALUES (2, 'Tomasz', 'Elbanowski');
INSERT INTO autor (id_autora, imie, nazwisko) VALUES (3, 'Andrzej', 'Sabkowski');
INSERT INTO autor (id_autora, imie, nazwisko) VALUES (4, 'Praca', 'Zbiorowa');
INSERT INTO autor (id_autora, imie, nazwisko) VALUES (5, 'Lucy Maud', 'Montgomery');
INSERT INTO autor (id_autora, imie, nazwisko) VALUES (6, 'Łukasz', 'Wierzbicki');
INSERT INTO autor (id_autora, imie, nazwisko) VALUES (7, 'Aleksander ', 'Kamiński');
INSERT INTO autor (id_autora, imie, nazwisko) VALUES (8, 'Adam ', 'Mickiewicz');
INSERT INTO autor (id_autora, imie, nazwisko) VALUES (9, 'Aleksander ', 'Fredro');
INSERT INTO autor (id_autora, imie, nazwisko) VALUES (10, 'Astrid ', 'Lindgren');
INSERT INTO	autor (id_autora, imie, nazwisko) VALUES (11, 'Bolesław ', 'Prus');
INSERT INTO autor (id_autora, imie, nazwisko) VALUES (12, 'Justyna ', 'Bednarek');
INSERT INTO autor (id_autora, imie, nazwisko) VALUES (13, 'Joanna ', 'Papuzińska');
INSERT INTO autor (id_autora, imie, nazwisko) VALUES (14, 'Waldemar ', 'Cichoń');
INSERT INTO autor (id_autora, imie, nazwisko) VALUES (15, 'Roman ', 'Pisarski');

CREATE TABLE CZYTELNICY (
	id_czyt SERIAL PRIMARY KEY,
	imie VARCHAR (30) NOT NULL,
	nazwisko VARCHAR (30) NOT NULL,
	login VARCHAR (30) NOT NULL,
	haslo VARCHAR (30) NOT NULL,
	email VARCHAR (30) NOT NULL,
	telefon NUMERIC (8), 
	data_urodzenia DATE
);

INSERT INTO czytelnicy (id_czyt, imie, nazwisko, login, haslo, email, telefon, data_urodzenia) 
	VALUES (1, 'Dawid', 'Kozioł', 'dk123', 'Dawidek15', 'dawidzior@02.pl', NULL, '1998-12-15');
INSERT INTO czytelnicy (id_czyt, imie, nazwisko, login, haslo, email, telefon, data_urodzenia) 
	VALUES (4, 'Aneta', 'Michalik', 'anetka2525', 'psinka147', 'am@onet.eu', '520-812-914', '1995-01-10');
INSERT INTO czytelnicy (id_czyt, imie, nazwisko, login, haslo, email, telefon, data_urodzenia) 
	VALUES (5, 'Krystian', 'Waligura', 'krystek1818', 'krystek@12', 'kw1818@swirek.pl', '620310468', '1980-04-17');
INSERT INTO czytelnicy (id_czyt, imie, nazwisko, login, haslo, email, telefon, data_urodzenia) 
	VALUES (6, 'Celina', 'Nowak', 'celinaN', 'Celinka158', 'celinka158@onet.pl', NULL, NULL);
INSERT INTO czytelnicy (id_czyt, imie, nazwisko, login, haslo, email, telefon, data_urodzenia) 
	VALUES (7, 'Michał', 'Ewan', 'michalek35@interia.pl', 'Michas97', 'michalek35@interia.pl', NULL, NULL);
INSERT INTO czytelnicy (id_czyt, imie, nazwisko, login, haslo, email, telefon, data_urodzenia) 
	VALUES (8, 'Bożena', 'Grab', 'bozencia69@gmail.com', 'BG69', 'bozencia69@gmail.com', '124131797', '1969-05-05');

CREATE TABLE KATEGORIA (
    id_kat SERIAL PRIMARY KEY,
    nazwa VARCHAR(40) UNIQUE
);

INSERT INTO kategoria (id_kat, nazwa) VALUES (1, 'Dla Dzieci');
INSERT INTO kategoria (id_kat, nazwa) VALUES (2, 'Historyczne');
INSERT INTO kategoria (id_kat, nazwa) VALUES (3, 'Poezja');
INSERT INTO kategoria (id_kat, nazwa) VALUES (4, 'Wojenne');
INSERT INTO kategoria (id_kat, nazwa) VALUES (6, 'Obyczajowe');
INSERT INTO kategoria (id_kat, nazwa) VALUES (7, 'Życiorys');
INSERT INTO kategoria (id_kat, nazwa) VALUES (5, 'Naukowe');
INSERT INTO kategoria (id_kat, nazwa) VALUES (8, 'Fantastyka');

CREATE TABLE ksiazki (
    id_ksiazki SERIAL PRIMARY KEY,
    id_kategoria integer REFERENCES KATEGORIA (id_kat),
    tytul VARCHAR (100) UNIQUE NOT NULL,
    id_autor integer REFERENCES AUTOR(id_autora),
    id_wyd integer REFERENCES WYDAWICTWO (id_wyd),
    rok_wydania integer
);

INSERT INTO ksiazki (id_ksiazki, id_kategoria, tytul, id_autor, id_wyd, rok_wydania) 
	VALUES (1, 6, 'Zniknięty ksiądz. Moja historia', 1, 25, 2022);
INSERT INTO ksiazki (id_ksiazki, id_kategoria, tytul, id_autor, id_wyd, rok_wydania) 
	VALUES (17, 1, 'Tabliczka mnożenia w wierszykach', 2, 14, 2020);
INSERT INTO ksiazki (id_ksiazki, id_kategoria, tytul, id_autor, id_wyd, rok_wydania) 
	VALUES (18, 8, 'Wiedźmin Ostatnie życzenie', 3, 14, 2014);
INSERT INTO ksiazki (id_ksiazki, id_kategoria, tytul, id_autor, id_wyd, rok_wydania) 
	VALUES (19, 1, ' Kolorowe traktory', 4, 14, 2021);
INSERT INTO ksiazki (id_ksiazki, id_kategoria, tytul, id_autor, id_wyd, rok_wydania) 
	VALUES (20, 5, ' Wielka księga zagadek i łamigłówek', 4, 15, 2018);
INSERT INTO ksiazki (id_ksiazki, id_kategoria, tytul, id_autor, id_wyd, rok_wydania) 
	VALUES (21, 1, ' Anne z Zielonych Szczytów', 5, 16, 2022);
INSERT INTO ksiazki (id_ksiazki, id_kategoria, tytul, id_autor, id_wyd, rok_wydania) 
	VALUES (22, 1, ' Afryka Kazika', 6, 17, 2019);
INSERT INTO ksiazki (id_ksiazki, id_kategoria, tytul, id_autor, id_wyd, rok_wydania) 
	VALUES (23, 1, 'Naklejam i czytam sylabami', 4, 18, 2021);
INSERT INTO ksiazki (id_ksiazki, id_kategoria, tytul, id_autor, id_wyd, rok_wydania) 
	VALUES (24, 1, 'Akademia mądrego dziecka Pierwsze słowa Moje ciało', 4, 19, 2020);
INSERT INTO ksiazki (id_ksiazki, id_kategoria, tytul, id_autor, id_wyd, rok_wydania) 
	VALUES (25, 2, 'Kamienie na szaniec', 7, 22, 2022);
INSERT INTO ksiazki (id_ksiazki, id_kategoria, tytul, id_autor, id_wyd, rok_wydania) 
	VALUES (26, 3, 'Pan Tadeusz', 8, 15, 2015);
INSERT INTO ksiazki (id_ksiazki, id_kategoria, tytul, id_autor, id_wyd, rok_wydania) 
	VALUES (27, 3, 'Zemsta', 9, 21, 2012);
INSERT INTO ksiazki (id_ksiazki, id_kategoria, tytul, id_autor, id_wyd, rok_wydania) 
	VALUES (28, 6, 'Lalka', 11, 15, 2015);
INSERT INTO ksiazki (id_ksiazki, id_kategoria, tytul, id_autor, id_wyd, rok_wydania) 
	VALUES (29, 1, 'Niesamowite przygody dziesięciu skarpetek', 12, 23, 2015);
INSERT INTO ksiazki (id_ksiazki, id_kategoria, tytul, id_autor, id_wyd, rok_wydania) 
	VALUES (30, 1, 'Dzieci z Bullerbyn', 10, 22, 2019);
INSERT INTO ksiazki (id_ksiazki, id_kategoria, tytul, id_autor, id_wyd, rok_wydania) 
	VALUES (31, 4, 'Asiunia', 13, 24, 2019);
INSERT INTO ksiazki (id_ksiazki, id_kategoria, tytul, id_autor, id_wyd, rok_wydania) 
	VALUES (32, 1, 'Cukierku, ty łobuzie!', 14, 14, 2021);
INSERT INTO ksiazki (id_ksiazki, id_kategoria, tytul, id_autor, id_wyd, rok_wydania) 
	VALUES (33, 1, 'O psie który jeździł koleją', 15, 15, 2016);

CREATE TABLE PRACOWNICY (
    id_prac SERIAL PRIMARY KEY,
    imie VARCHAR(30) NOT NULL,
    nazwisko VARCHAR(30) NOT NULL,
    login VARCHAR(30) NOT NULL,
    haslo VARCHAR(30) NOT NULL,
    id_rola integer REFERENCES ROLA(id_rola)
);

INSERT INTO pracownicy (id_prac, imie, nazwisko, login, haslo, id_rola) 
	VALUES (1, 'Andrzej', 'Skoczylas', 'skoczylas@biblioteka.org', 'sunia123', 1);
INSERT INTO pracownicy (id_prac, imie, nazwisko, login, haslo, id_rola) 
	VALUES (2, 'Sabina', 'Mucha', 'smucha@biblioteka.org', 'sabinam', 2);
INSERT INTO pracownicy (id_prac, imie, nazwisko, login, haslo, id_rola) 
	VALUES (3, 'Daria', 'Rak', 'rakd@biblioteka.org', 'equipmentDR', 2);
INSERT INTO pracownicy (id_prac, imie, nazwisko, login, haslo, id_rola) 
	VALUES (4, 'Henryk', 'Jawor', 'JaworH@biblioteka.org', 'jawor999', 2);
INSERT INTO pracownicy (id_prac, imie, nazwisko, login, haslo, id_rola) 
	VALUES (5, 'Danuta', 'Migacz', 'migaczd@biblioteka.org', 'danka86', 2);

CREATE TABLE ROLA (
    id_rola SERIAL PRIMARY KEY,
    nazwa VARCHAR(50)
);

INSERT INTO rola (id_rola, nazwa) VALUES (1, 'DYREKTOR');
INSERT INTO rola (id_rola, nazwa) VALUES (2, 'PRACOWNIK');

CREATE TABLE WYDAWNICTWO (
    id_wyd SERIAL NOT NULL,
    nazwa VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO wydawnictwo (id_wyd, nazwa) VALUES (14, 'Wydawnictwo Inne');
INSERT INTO wydawnictwo (id_wyd, nazwa) VALUES (15, 'Wydawnictwo Greg');
INSERT INTO wydawnictwo (id_wyd, nazwa) VALUES (16, 'Wydawnictwo Marginesy');
INSERT INTO wydawnictwo (id_wyd, nazwa) VALUES (17, ' Wydawnictwo Bis');
INSERT INTO wydawnictwo (id_wyd, nazwa) VALUES (18, ' Wydawnictwo Aksjomat');
INSERT INTO wydawnictwo (id_wyd, nazwa) VALUES (19, 'Wydawnictwo AA');
INSERT INTO wydawnictwo (id_wyd, nazwa) VALUES (20, 'Wydawnictwo Nasza Księgarnia');
INSERT INTO wydawnictwo (id_wyd, nazwa) VALUES (21, 'Wydawnictwo Egmont');
INSERT INTO wydawnictwo (id_wyd, nazwa) VALUES (22, '  Wydawnictwo Nasza Księgarnia');
INSERT INTO wydawnictwo (id_wyd, nazwa) VALUES (23, 'Wydawnictwo Poradnia K');
INSERT INTO wydawnictwo (id_wyd, nazwa) VALUES (24, 'Wydawnictwo Literatura');
INSERT INTO wydawnictwo (id_wyd, nazwa) VALUES (25, 'Agora');

CREATE TABLE WYPOZYCZENIA (
    id_wyp SERIAL PRIMARY KEY,
    id_czytelnika INTEGER REFERENCES CZYTELNICY (id_czyt),
    id_ksiazka integer REFERENCES ksiazki(id_ksiazki),
    data_wypozyczenia date,
    id_prac_wypoz integer REFERENCES pracownicy (id_prac),
    data_oddania date,
    id_prac_odd integer REFERENCES pracownicy (id_prac)
);

INSERT INTO wypozyczenia (id_wyp, id_czytelnika, id_ksiazka, data_wypozyczenia, id_prac_wypoz, data_oddania, id_prac_odd) 
	VALUES (1, 1, 17, '2020-05-11', 2, '2020-07-08', 3);
INSERT INTO wypozyczenia (id_wyp, id_czytelnika, id_ksiazka, data_wypozyczenia, id_prac_wypoz, data_oddania, id_prac_odd) 
	VALUES (2, 4, 1, '2021-08-07', 3, '2021-09-05', 3);
INSERT INTO wypozyczenia (id_wyp, id_czytelnika, id_ksiazka, data_wypozyczenia, id_prac_wypoz, data_oddania, id_prac_odd) 
	VALUES (3, 6, 22, '2021-01-07', 4, '2021-03-05', 5);
INSERT INTO wypozyczenia (id_wyp, id_czytelnika, id_ksiazka, data_wypozyczenia, id_prac_wypoz, data_oddania, id_prac_odd) 
	VALUES (4, 8, 30, '2022-01-04', 5, '2022-02-05', 2);
INSERT INTO wypozyczenia (id_wyp, id_czytelnika, id_ksiazka, data_wypozyczenia, id_prac_wypoz, data_oddania, id_prac_odd) 
	VALUES (5, 6, 30, '2022-03-15', 3, '2022-04-01', 4);
INSERT INTO wypozyczenia (id_wyp, id_czytelnika, id_ksiazka, data_wypozyczenia, id_prac_wypoz, data_oddania, id_prac_odd) 
	VALUES (6, 8, 20, '2020-12-15', 2, '2020-12-30', 4);
INSERT INTO wypozyczenia (id_wyp, id_czytelnika, id_ksiazka, data_wypozyczenia, id_prac_wypoz, data_oddania, id_prac_odd) 
	VALUES (7, 7, 28, '2021-05-11', 3, '2021-07-08', 5);
INSERT INTO wypozyczenia (id_wyp, id_czytelnika, id_ksiazka, data_wypozyczenia, id_prac_wypoz, data_oddania, id_prac_odd) 
	VALUES (8, 5, 32, '2022-04-07', 2, '2022-05-05', 2);
INSERT INTO wypozyczenia (id_wyp, id_czytelnika, id_ksiazka, data_wypozyczenia, id_prac_wypoz, data_oddania, id_prac_odd) 
	VALUES (9, 8, 18, '2021-11-10', 4, '2021-10-10', 2);
INSERT INTO wypozyczenia (id_wyp, id_czytelnika, id_ksiazka, data_wypozyczenia, id_prac_wypoz, data_oddania, id_prac_odd) 
	VALUES (10, 1, 21, '2022-09-04', 4, '2022-10-03', 4);
INSERT INTO wypozyczenia (id_wyp, id_czytelnika, id_ksiazka, data_wypozyczenia, id_prac_wypoz, data_oddania, id_prac_odd) 
	VALUES (11, 7, 28, '2021-05-11', 3, '2021-07-08', 5);
INSERT INTO wypozyczenia (id_wyp, id_czytelnika, id_ksiazka, data_wypozyczenia, id_prac_wypoz, data_oddania, id_prac_odd) 
	VALUES (12, 5, 32, '2022-04-07', 2, '2022-05-05', 2);
INSERT INTO wypozyczenia (id_wyp, id_czytelnika, id_ksiazka, data_wypozyczenia, id_prac_wypoz, data_oddania, id_prac_odd) 
	VALUES (13, 8, 18, '2021-11-10', 4, '2021-10-10', 2);
INSERT INTO wypozyczenia (id_wyp, id_czytelnika, id_ksiazka, data_wypozyczenia, id_prac_wypoz, data_oddania, id_prac_odd) 
	VALUES (14, 1, 21, '2022-09-04', 4, '2022-10-03', 4);



