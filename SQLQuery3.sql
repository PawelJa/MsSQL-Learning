SELECT * FROM Pracownicy

--SELECT MIN(Placa_pod) AS Minimum, MAX(Placa_pod) AS Maximum, (MAX(Placa_pod)-MIN(Placa_pod)) AS Roznica FROM Pracownicy
--SELECT Stanowisko, AVG(Placa_pod) AS Srednia FROM Pracownicy GROUP BY Stanowisko ORDER BY Srednia DESC
--SELECT COUNT(*) AS Kierownicy FROM Pracownicy WHERE Stanowisko LIKE 'Kierownik'
--SELECT ID_Oddz, SUM(Placa_pod + ISNULL(Placa_dod, 0)) AS Sumaryczne_place FROM Pracownicy GROUP BY ID_Oddz
--SELECT TOP(1) SUM(Placa_pod + ISNULL(Placa_dod, 0)) AS Sumaryczne_place FROM Pracownicy GROUP BY ID_Oddz ORDER BY Sumaryczne_place DESC
--SELECT Szef, MIN(Placa_pod + ISNULL(Placa_dod,0)) AS Minimalna_placa FROM Pracownicy WHERE Szef IS NOT NULL GROUP BY Szef ORDER BY Minimalna_placa DESC
--SELECT ID_Oddz, COUNT(*) AS Ilosc_prac FROM Pracownicy GROUP BY ID_Oddz ORDER BY Ilosc_prac DESC