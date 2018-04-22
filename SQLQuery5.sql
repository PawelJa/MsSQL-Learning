SELECT * FROM Pracownicy
--SELECT Nazwisko, Stanowisko, ID_Oddz FROM Pracownicy WHERE ID_Oddz IN ( SELECT ID_Oddz FROM Pracownicy WHERE Nazwisko LIKE 'Kowal' )
--SELECT Nazwisko, Stanowisko, Zatrudniony FROM Pracownicy WHERE Zatrudniony = ( SELECT TOP(1) Zatrudniony FROM Pracownicy WHERE Stanowisko LIKE 'KIEROWNIK' ORDER BY Zatrudniony ASC)
--SELECT Oddzialy.ID, p.Nazwisko, p.ID_Oddz, p.Zatrudniony FROM Oddzialy INNER JOIN (SELECT Pracownicy.Zatrudniony, Pracownicy.ID_Oddz, Pracownicy. Nazwisko FROM Pracownicy WHERE Pracownicy.Zatrudniony IN (SELECT MAX (Zatrudniony) FROM Pracownicy GROUP BY Pracownicy.ID_Oddz)) AS p ON Oddzialy.ID=p.ID_Oddz ORDER BY Zatrudniony
--SELECT o.ID, o.Nazwa FROM Oddzialy o LEFT JOIN (SELECT DISTINCT ID_Oddz, Nazwisko FROM Pracownicy) a ON o.ID=a.ID_Oddz WHERE Nazwisko IS NULL
SELECT Nazwisko, p.Stanowisko, Placa_pod, a.Srednia FROM Pracownicy p INNER JOIN (SELECT Stanowisko, AVG(Placa_pod) AS Srednia FROM Pracownicy GROUP BY Stanowisko ) a ON p.Stanowisko=a.Stanowisko WHERE p.Placa_pod>a.Srednia
