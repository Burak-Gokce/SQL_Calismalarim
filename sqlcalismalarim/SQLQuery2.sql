SELECT * FROM CUSTOMERS
--Buradaki * iþareti ile bütün alanlarý çaðýrabiliyoruz.
SELECT ID,CUSTOMERNAME FROM CUSTOMERS
--Sadece istediðimiz kolonlarý çaðýrdýk.
INSERT INTO CUSTOMERS (CUSTOMERNAME,CITY,BIRTHDATE,DISTRICT,GENDER)
VALUES ('MEHMET ÖZAL','ANTALYA','1990-12-21','ALANYA','E')
--Tablonun içine insert into komutuyla yeni deðerler ekledik.
INSERT INTO CUSTOMERS(CUSTOMERNAME,CITY,DISTRICT,BIRTHDATE,GENDER) 
VALUES ('Volkan ÇEKÝP','Bartýn','Kurucaþile','1997-10-24 00:00:00.000','E')
--Yukarýdaki komutu excelde 1000 satýr için kopyaladýk ve yeni bir sorgu sayfa
--sýnda yazdýrdýk.Bu sayede 1000 farklý deðer geldi.
SELECT * FROM CUSTOMERS

UPDATE CUSTOMERS
SET NATION = ''
--Update set komutuyla nation kolonundaki deðerleri boþluða çevirdik.
UPDATE CUSTOMERS
SET NATION = 'TR'
--Update set komutuyla nation kolonundaki deðerleri TR'ye çevirdik.
UPDATE CUSTOMERS
SET NATION = 'TR',AGE = 35
--Ayný anda 2 kolonu birden güncelledik.
UPDATE CUSTOMERS
SET NATION = 'TR',AGE = DATEDIFF(YEAR,BIRTHDATE,GETDATE())
--Herkesin yaþýný DATEDIFF fonksiyonunu AGE kolonu içinde ve þimdiki tarihle
--BIRTHDATE'deki tarihleri birbirinden çýkararak yaþlarý hesapladý.
DELETE FROM CUSTOMERS
--Bu komutumuzla tablodaki bütün deðerleri siliyoruz.
SELECT * FROM CUSTOMERS

TRUNCATE TABLE CUSTOMERS
--Truncate komutunu Delete komutundan farký her þeyi sýfýrlar.Mesela Delete komu
--tu ile silince Id deðerleri 1'dan baþlamaz silinen son deðerden baþlar.Ama 
--Truncate komutuyla silince 1'den baþlar.
SELECT * FROM CUSTOMERS

WHERE CITY='ÝSTANBUL'
--Sadece Ýstanbul'da yaþayanlarý getirdik.
SELECT * FROM CUSTOMERS

WHERE CUSTOMERNAME='Fikret DENÝZALP'
--Ýsmi sadece Fikret DENÝZALP olaný getirdik.
SELECT * FROM CUSTOMERS

WHERE CITY<>'ÝSTANBUL'
--Ýstanbul'dan farklý bütün þehirleri getirdik.
SELECT * FROM CUSTOMERS

WHERE  NOT CITY='ÝSTANBUL'
--Yukarýdaki komutla ayný anlama geliyor not komutu.
SELECT * FROM CUSTOMERS

WHERE GENDER = 'E'
--Cinsiyeti Erkek olanlarý getirdik.
SELECT * FROM CUSTOMERS

WHERE BIRTHDATE > '1990-01-01'
--Doðum tarihi 1990'dan büyük olanlarý getirdik.
SELECT * FROM CUSTOMERS

WHERE BIRTHDATE < '1990-01-01'
--Doðum tarihi 1990'dan küçük olanlarý getirdik.
SELECT * FROM CUSTOMERS

WHERE BIRTHDATE >= '1990-01-01'

SELECT * FROM CUSTOMERS

WHERE BIRTHDATE BETWEEN '1990-01-01' AND '1998-12-31'
--Doðum tarihi 1990 ile 1998 arasýnda olanlarý getirdik.Yukarýdaki iki deðeri de
--getiriyor between komutu yani 1990 ve 1998'e eþit olanlarý.
UPDATE CUSTOMERS SET AGE = DATEDIFF(YEAR,BIRTHDATE,GETDATE())

SELECT * FROM CUSTOMERS

WHERE AGE BETWEEN 22 AND 30

SELECT * FROM CUSTOMERS

WHERE CUSTOMERNAME LIKE 'ALÝ%'
--Ýsmi Ali ile baþlayanlarý getirdik.
SELECT * FROM CUSTOMERS

WHERE CUSTOMERNAME LIKE '%ALP'
--Ýsminin sonu alp ile bitenler.
SELECT * FROM CUSTOMERS

WHERE CUSTOMERNAME LIKE '%ALAN%'
--Ýsminin içerisinde ALAN geçenleri getirdik.
SELECT * FROM CUSTOMERS

WHERE CUSTOMERNAME NOT LIKE 'ALÝ%'
--Ýsmi Ali ile baþlamayanlarý getirdik.
SELECT * FROM CUSTOMERS

WHERE CITY IN('ÝSTANBUL','ANKARA')
--Þehirlerde Ýstanbul ve Ankara olanlarý getirdik.

UPDATE CUSTOMERS SET GENDER='ERKEK' WHERE GENDER='E'
--Cinsiyet bölümündeki E deðerlerini where þartý komutuyla ERKEK olarak deðiþtirdik.

UPDATE CUSTOMERS SET GENDER='KADIN' WHERE GENDER='K'
--Cinsiyet bölümündeki K deðerlerini where þartý komutuyla KADIN olarak deðiþtirdik.

SELECT * FROM CUSTOMERS
WHERE CITY='ÝSTANBUL' AND DISTRICT='Beylikdüzü'
--And operatörüyle hem þehri Ýstanbul olanlarý hem ilçesi Beylikdüzü olanlarý getirdik.

SELECT * FROM CUSTOMERS
WHERE CITY='ÝSTANBUL' AND GENDER='ERKEK' AND DISTRICT='ESENLER'
--Þehri Ýstanbul,Cinsiyeti Erkek ve ilçesi Esenler olaný getirdik.

SELECT * FROM CUSTOMERS
WHERE CITY='ÝSTANBUL' AND GENDER='ERKEK' AND 
BIRTHDATE BETWEEN '19900101' AND '20000101'

SELECT * FROM CUSTOMERS

WHERE CITY='ÝSTANBUL' OR CITY='ÝZMÝR'
--Or operatörüyle þehri Ýstanbul ve Ýzmir olanlarý getirdi.
SELECT * FROM CUSTOMERS

WHERE CITY='ÝSTANBUL' OR CITY='ÝZMÝR' OR CITY='BURSA'
--Or operatörüyle þehri Ýstanbul,Ýzmir ve Bursa olanlarý getirdi.
--Or komutunda en az birisi doðru olursa onu getirir.

SELECT DISTINCT CITY FROM CUSTOMERS
--DISTINCT komutu ile þehirleri tekilleþtirdik.Gerçek þehir sayýsýný elde ettik.

SELECT DISTINCT CITY,DISTRICT FROM CUSTOMERS
WHERE CITY='ÝSTANBUL'
--DISTINCT komutu ile tekrar eden þehir ve ilçeleri tekilleþtirdik.

SELECT DISTINCT GENDER FROM CUSTOMERS
WHERE CITY='ÝSTANBUL'
--Kadýn ve Erkek deðerlerini tekilleþtirdi.

SELECT DISTINCT AGE FROM CUSTOMERS
WHERE CITY='ÝSTANBUL'
--Kaç farklý yaþ var bunu elde ettik.

SELECT * FROM CUSTOMERS

ORDER BY ID ASC
--Küçükten büyüðe göre sýraladý.

SELECT * FROM CUSTOMERS

ORDER BY ID DESC
--Büyükten küçüðe doðru sýraladýk.

SELECT * FROM CUSTOMERS

ORDER BY CUSTOMERNAME

SELECT * FROM CUSTOMERS

ORDER BY BIRTHDATE

SELECT * FROM CUSTOMERS

ORDER BY CITY


SELECT * FROM CUSTOMERS

ORDER BY CITY,CUSTOMERNAME
--Ýlk önce þehre göre sonra isme göre sýraladý.

SELECT * FROM CUSTOMERS

ORDER BY CITY ASC,CUSTOMERNAME DESC

SELECT * FROM CUSTOMERS

ORDER BY CITY,DISTRICT,CUSTOMERNAME

SELECT * FROM CUSTOMERS
WHERE CITY='ÝSTANBUL'
ORDER BY CITY,DISTRICT,CUSTOMERNAME

SELECT * FROM CUSTOMERS
WHERE CITY='ÝSTANBUL'
ORDER BY 2
--Burada ORDER BY 2 dediðimiz için 2.sýradaki kolona göre sýralama yaptý.

SELECT TOP 100 * FROM CUSTOMERS
--Top komutuyla ilk 100 deðeri getirdik.
SELECT TOP 100 PERCENT * FROM CUSTOMERS
--Elimizdeki deðerlerin 100'de 100'ünü getiriyoruz.
