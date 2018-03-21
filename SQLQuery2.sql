SELECT * FROM Pracownicy
SELECT * FROM Oddzialy

--SELECT Nazwisko, CONCAT (LEFT(Stanowisko, 2), ID) AS Kod FROM Pracownicy
--SELECT Nazwisko, REPLACE(REPLACE(REPLACE(Nazwisko, 'K', 'X'), 'L','X'), 'M', 'X') AS Wojna FROM Pracownicy
--SELECT Nazwisko FROM Pracownicy WHERE SUBSTRING (Nazwisko, 1, (LEN(Nazwisko))/2) LIKE '%L%'
--SELECT Nazwisko, ROUND((Placa_pod*1.15),0) AS Podwyzka FROM Pracownicy
--SELECT Nazwisko, Placa_pod, DATEDIFF(year, Zatrudniony, '2000-01-01') AS Staz FROM Pracownicy
--SELECT DATENAME(dw, GETDATE()) AS Dzien_Tygodnia
SELECT Nazwisko, Oddzialy.Nazwa, "Region" =
	CASE
		WHEN Oddzialy.Nazwa LIKE 'POZNAN' THEN 'POLSKA CENTRALNA'
		WHEN Oddzialy.Nazwa LIKE 'WARSZAWA' THEN 'POLSKA CENTRALNA'
		WHEN Oddzialy.Nazwa LIKE 'GDANSK' THEN 'POLSKA PÓ£NOCNA'
		WHEN Oddzialy.Nazwa LIKE 'KRAKOW' THEN 'POLSKA PO£UDNIOWA'
		WHEN Oddzialy.Nazwa LIKE 'WROCLAW' THEN 'POLSKA PO£UDNIOWA'
	END 
	FROM Pracownicy INNER JOIN Oddzialy ON ID_Oddz=Oddzialy.ID