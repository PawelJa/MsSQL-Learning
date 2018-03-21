SELECT * FROM Pracownicy
SELECT * FROM Oddzialy
SELECT * FROM Stanowiska

--SELECT Nazwisko, Stanowisko, ID_Oddz, Oddzialy.Nazwa FROM Pracownicy INNER JOIN Oddzialy ON Pracownicy.ID_Oddz=Oddzialy.ID ORDER BY Nazwisko
--SELECT Nazwisko, Stanowisko, ID_Oddz, Oddzialy.Nazwa FROM Pracownicy INNER JOIN Oddzialy ON Pracownicy.ID_Oddz=Oddzialy.ID WHERE Oddzialy.Nazwa LIKE 'WARSZAWA' ORDER BY Nazwisko
--SELECT Nazwisko, Oddzialy.Nazwa, Oddzialy.Adres, Stanowisko, Placa_pod FROM Pracownicy INNER JOIN Oddzialy ON Pracownicy.ID_Oddz=Oddzialy.ID WHERE Placa_pod>2500 ORDER BY Placa_pod
--SELECT Nazwisko, Stanowiska.Stanowisko, Placa_pod, Stanowiska.Placa_min AS Placa_min, Stanowiska.Placa_max AS Placa_max FROM Pracownicy INNER JOIN Stanowiska ON Pracownicy.Stanowisko=Stanowiska.Stanowisko ORDER BY Nazwisko
--SELECT Nazwisko, Stanowiska.Stanowisko, Placa_pod, Stanowiska.Placa_min AS Placa_min, Stanowiska.Placa_max AS Placa_max FROM Pracownicy INNER JOIN Stanowiska ON Pracownicy.Stanowisko=Stanowiska.Stanowisko WHERE Stanowiska.Stanowisko LIKE 'BRYGADZISTA' AND Placa_pod<Placa_min OR Placa_pod>Placa_max
--SELECT Nazwisko, Stanowisko, Oddzialy.Nazwa, Placa_pod FROM Pracownicy INNER JOIN Oddzialy ON Pracownicy.ID_Oddz=Oddzialy.ID WHERE Stanowisko NOT LIKE 'PRAKTYKANT' ORDER BY Placa_pod DESC
--SELECT Nazwisko, Stanowiska.Stanowisko, Stanowiska.Placa_min*12 AS 'Roczna palca min.' FROM Pracownicy INNER JOIN Stanowiska ON Pracownicy.Stanowisko=Stanowiska.Stanowisko WHERE (Stanowiska.Placa_min*12)>15000 ORDER BY Nazwisko
--SELECT a.ID, a.Nazwisko, a.Szef, b.Nazwisko FROM Pracownicy a INNER JOIN Pracownicy b ON a.Szef=b.ID