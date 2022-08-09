SELECT * FROM CUSTOMERS
--Buradaki * i�areti ile b�t�n alanlar� �a��rabiliyoruz.
SELECT ID,CUSTOMERNAME FROM CUSTOMERS
--Sadece istedi�imiz kolonlar� �a��rd�k.
INSERT INTO CUSTOMERS (CUSTOMERNAME,CITY,BIRTHDATE,DISTRICT,GENDER)
VALUES ('MEHMET �ZAL','ANTALYA','1990-12-21','ALANYA','E')
--Tablonun i�ine insert into komutuyla yeni de�erler ekledik.
INSERT INTO CUSTOMERS(CUSTOMERNAME,CITY,DISTRICT,BIRTHDATE,GENDER) 
VALUES ('Volkan �EK�P','Bart�n','Kuruca�ile','1997-10-24 00:00:00.000','E')
--Yukar�daki komutu excelde 1000 sat�r i�in kopyalad�k ve yeni bir sorgu sayfa
--s�nda yazd�rd�k.Bu sayede 1000 farkl� de�er geldi.
SELECT * FROM CUSTOMERS

UPDATE CUSTOMERS
SET NATION = ''
--Update set komutuyla nation kolonundaki de�erleri bo�lu�a �evirdik.
UPDATE CUSTOMERS
SET NATION = 'TR'
--Update set komutuyla nation kolonundaki de�erleri TR'ye �evirdik.
UPDATE CUSTOMERS
SET NATION = 'TR',AGE = 35
--Ayn� anda 2 kolonu birden g�ncelledik.
UPDATE CUSTOMERS
SET NATION = 'TR',AGE = DATEDIFF(YEAR,BIRTHDATE,GETDATE())
--Herkesin ya��n� DATEDIFF fonksiyonunu AGE kolonu i�inde ve �imdiki tarihle
--BIRTHDATE'deki tarihleri birbirinden ��kararak ya�lar� hesaplad�.
DELETE FROM CUSTOMERS
--Bu komutumuzla tablodaki b�t�n de�erleri siliyoruz.
SELECT * FROM CUSTOMERS

TRUNCATE TABLE CUSTOMERS
--Truncate komutunu Delete komutundan fark� her �eyi s�f�rlar.Mesela Delete komu
--tu ile silince Id de�erleri 1'dan ba�lamaz silinen son de�erden ba�lar.Ama 
--Truncate komutuyla silince 1'den ba�lar.
SELECT * FROM CUSTOMERS

WHERE CITY='�STANBUL'
--Sadece �stanbul'da ya�ayanlar� getirdik.
SELECT * FROM CUSTOMERS

WHERE CUSTOMERNAME='Fikret DEN�ZALP'
--�smi sadece Fikret DEN�ZALP olan� getirdik.
SELECT * FROM CUSTOMERS

WHERE CITY<>'�STANBUL'
--�stanbul'dan farkl� b�t�n �ehirleri getirdik.
SELECT * FROM CUSTOMERS

WHERE  NOT CITY='�STANBUL'
--Yukar�daki komutla ayn� anlama geliyor not komutu.
SELECT * FROM CUSTOMERS

WHERE GENDER = 'E'
--Cinsiyeti Erkek olanlar� getirdik.
SELECT * FROM CUSTOMERS

WHERE BIRTHDATE > '1990-01-01'
--Do�um tarihi 1990'dan b�y�k olanlar� getirdik.
SELECT * FROM CUSTOMERS

WHERE BIRTHDATE < '1990-01-01'
--Do�um tarihi 1990'dan k���k olanlar� getirdik.
SELECT * FROM CUSTOMERS

WHERE BIRTHDATE >= '1990-01-01'

SELECT * FROM CUSTOMERS

WHERE BIRTHDATE BETWEEN '1990-01-01' AND '1998-12-31'
--Do�um tarihi 1990 ile 1998 aras�nda olanlar� getirdik.Yukar�daki iki de�eri de
--getiriyor between komutu yani 1990 ve 1998'e e�it olanlar�.
UPDATE CUSTOMERS SET AGE = DATEDIFF(YEAR,BIRTHDATE,GETDATE())

SELECT * FROM CUSTOMERS

WHERE AGE BETWEEN 22 AND 30

SELECT * FROM CUSTOMERS

WHERE CUSTOMERNAME LIKE 'AL�%'
--�smi Ali ile ba�layanlar� getirdik.
SELECT * FROM CUSTOMERS

WHERE CUSTOMERNAME LIKE '%ALP'
--�sminin sonu alp ile bitenler.
SELECT * FROM CUSTOMERS

WHERE CUSTOMERNAME LIKE '%ALAN%'
--�sminin i�erisinde ALAN ge�enleri getirdik.
SELECT * FROM CUSTOMERS

WHERE CUSTOMERNAME NOT LIKE 'AL�%'
--�smi Ali ile ba�lamayanlar� getirdik.
SELECT * FROM CUSTOMERS

WHERE CITY IN('�STANBUL','ANKARA')
--�ehirlerde �stanbul ve Ankara olanlar� getirdik.

UPDATE CUSTOMERS SET GENDER='ERKEK' WHERE GENDER='E'
--Cinsiyet b�l�m�ndeki E de�erlerini where �art� komutuyla ERKEK olarak de�i�tirdik.

UPDATE CUSTOMERS SET GENDER='KADIN' WHERE GENDER='K'
--Cinsiyet b�l�m�ndeki K de�erlerini where �art� komutuyla KADIN olarak de�i�tirdik.

SELECT * FROM CUSTOMERS
WHERE CITY='�STANBUL' AND DISTRICT='Beylikd�z�'
--And operat�r�yle hem �ehri �stanbul olanlar� hem il�esi Beylikd�z� olanlar� getirdik.

SELECT * FROM CUSTOMERS
WHERE CITY='�STANBUL' AND GENDER='ERKEK' AND DISTRICT='ESENLER'
--�ehri �stanbul,Cinsiyeti Erkek ve il�esi Esenler olan� getirdik.

SELECT * FROM CUSTOMERS
WHERE CITY='�STANBUL' AND GENDER='ERKEK' AND 
BIRTHDATE BETWEEN '19900101' AND '20000101'

SELECT * FROM CUSTOMERS

WHERE CITY='�STANBUL' OR CITY='�ZM�R'
--Or operat�r�yle �ehri �stanbul ve �zmir olanlar� getirdi.
SELECT * FROM CUSTOMERS

WHERE CITY='�STANBUL' OR CITY='�ZM�R' OR CITY='BURSA'
--Or operat�r�yle �ehri �stanbul,�zmir ve Bursa olanlar� getirdi.
--Or komutunda en az birisi do�ru olursa onu getirir.

SELECT DISTINCT CITY FROM CUSTOMERS
--DISTINCT komutu ile �ehirleri tekille�tirdik.Ger�ek �ehir say�s�n� elde ettik.

SELECT DISTINCT CITY,DISTRICT FROM CUSTOMERS
WHERE CITY='�STANBUL'
--DISTINCT komutu ile tekrar eden �ehir ve il�eleri tekille�tirdik.

SELECT DISTINCT GENDER FROM CUSTOMERS
WHERE CITY='�STANBUL'
--Kad�n ve Erkek de�erlerini tekille�tirdi.

SELECT DISTINCT AGE FROM CUSTOMERS
WHERE CITY='�STANBUL'
--Ka� farkl� ya� var bunu elde ettik.

SELECT * FROM CUSTOMERS

ORDER BY ID ASC
--K���kten b�y��e g�re s�ralad�.

SELECT * FROM CUSTOMERS

ORDER BY ID DESC
--B�y�kten k����e do�ru s�ralad�k.

SELECT * FROM CUSTOMERS

ORDER BY CUSTOMERNAME

SELECT * FROM CUSTOMERS

ORDER BY BIRTHDATE

SELECT * FROM CUSTOMERS

ORDER BY CITY


SELECT * FROM CUSTOMERS

ORDER BY CITY,CUSTOMERNAME
--�lk �nce �ehre g�re sonra isme g�re s�ralad�.

SELECT * FROM CUSTOMERS

ORDER BY CITY ASC,CUSTOMERNAME DESC

SELECT * FROM CUSTOMERS

ORDER BY CITY,DISTRICT,CUSTOMERNAME

SELECT * FROM CUSTOMERS
WHERE CITY='�STANBUL'
ORDER BY CITY,DISTRICT,CUSTOMERNAME

SELECT * FROM CUSTOMERS
WHERE CITY='�STANBUL'
ORDER BY 2
--Burada ORDER BY 2 dedi�imiz i�in 2.s�radaki kolona g�re s�ralama yapt�.

SELECT TOP 100 * FROM CUSTOMERS
--Top komutuyla ilk 100 de�eri getirdik.
SELECT TOP 100 PERCENT * FROM CUSTOMERS
--Elimizdeki de�erlerin 100'de 100'�n� getiriyoruz.
