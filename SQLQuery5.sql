SELECT * FROM Pracownicy
--SELECT Nazwisko, Stanowisko, ID_Oddz FROM Pracownicy WHERE ID_Oddz IN ( SELECT ID_Oddz FROM Pracownicy WHERE Nazwisko LIKE 'Kowal' )
SELECT Nazwisko, Stanowisko, Zatrudniony FROM Pracownicy WHERE Zatrudniony = ( SELECT TOP(1) Zatrudniony FROM Pracownicy WHERE Stanowisko LIKE 'KIEROWNIK' ORDER BY Zatrudniony ASC)