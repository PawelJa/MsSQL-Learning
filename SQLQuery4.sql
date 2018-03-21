SELECT * FROM Pracownicy
SELECT * FROM Oddzialy
SELECT * FROM Stanowiska

--SELECT Nazwisko, Stanowisko, ID_Oddz, Oddzialy.Nazwa FROM Pracownicy INNER JOIN Oddzialy ON Pracownicy.ID_Oddz=Oddzialy.ID ORDER BY Nazwisko
--SELECT Nazwisko, Stanowisko, ID_Oddz, Oddzialy.Nazwa FROM Pracownicy INNER JOIN Oddzialy ON Pracownicy.ID_Oddz=Oddzialy.ID WHERE Oddzialy.Nazwa LIKE 'WARSZAWA' ORDER BY Nazwisko
--SELECT Nazwisko, Oddzialy.Nazwa, Oddzialy.Adres, Stanowisko, Placa_pod FROM Pracownicy INNER JOIN Oddzialy ON Pracownicy.ID_Oddz=Oddzialy.ID WHERE Placa_pod>2500 ORDER BY Placa_pod
--SELECT Nazwisko, Stanowisko, Placa_pod, Stanowiska.Placa_min AS Placa_min, Stanowiska.Placa_max AS Placa_max FROM Pracownicy INNER JOIN Stanowiska ON Pracownicy.Stanowisko=Stanowiska.Stanowisko