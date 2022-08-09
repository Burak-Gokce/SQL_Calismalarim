SELECT COUNT(*) FROM SALES
--Ka� sat�r oldu�unu count komutuyla elde ettik.

SELECT * FROM SALES ORDER BY AMOUNT
--Adet s�ralamas� yapt�k.En az alan ve en �ok alan de�erler.

SELECT MIN(AMOUNT),MAX(AMOUNT) FROM SALES
--En az ve en �ok alan de�erleri getirdik.

SELECT MIN(AMOUNT),MAX(AMOUNT),COUNT(*) FROM SALES

SELECT SUM(AMOUNT) FROM SALES
--Toplam sat�� adedi.

SELECT MIN(AMOUNT),MAX(AMOUNT),COUNT(*),SUM(AMOUNT),AVG(AMOUNT) FROM SALES

SELECT AVG(AMOUNT) FROM SALES
--Ortalama sat�� miktar�n� elde ettik.

SELECT * FROM SALES ORDER BY TOTALPRICE

SELECT MIN(TOTALPRICE),MAX(TOTALPRICE),COUNT(*),
SUM(TOTALPRICE),AVG(TOTALPRICE) FROM SALES

SELECT MIN(TOTALPRICE),MAX(TOTALPRICE),COUNT(*),
SUM(TOTALPRICE),AVG(TOTALPRICE) FROM SALES WHERE CITY='ADANA'
--Adana i�in toplam fiyat de�erlerini getirdik.

SELECT MIN(TOTALPRICE),MAX(TOTALPRICE),COUNT(*),
SUM(TOTALPRICE),AVG(TOTALPRICE) FROM SALES WHERE CITY='�STANBUL'
