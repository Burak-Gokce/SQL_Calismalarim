--Kullan�c� Ad�,Ad Soyad,�l,�l�e,Semt,A��k Adres,
--Sipari� ID,Tarih,Toplam Tutar,
--�deme Tarihi,Banka Onay Kodu,Fatura Tarihi,Kargo Fi� No

SELECT 
	U.USERNAME_ AS KULLANICIADI,U.NAMESURNAME AS ADSOYAD,
	CT.CITY AS IL,T.TOWN AS ILCE,D.DISTRICT AS SEMT,A.ADDRESSTEXT AS ACIKADRES,
	O.ID AS SIPARISID,O.DATE_ AS TARIH,O.TOTALPRICE AS TOPLAMTUTAR,
	P.DATE_ AS ODEMETARIHI,P.APPROVECODE AS BANKAONAYKODU,
	I.DATE_ AS FATURATARIHI,I.CARGOFICHENO AS KARGOFISNO
FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
WHERE U.NAMESURNAME='Talha CANIKARA'


SELECT 
	U.USERNAME_ AS KULLANICIADI,U.NAMESURNAME AS ADSOYAD,
	CT.CITY AS IL,T.TOWN AS ILCE,D.DISTRICT AS SEMT,A.ADDRESSTEXT AS ACIKADRES,
	O.ID AS SIPARISID,O.DATE_ AS TARIH,O.TOTALPRICE AS TOPLAMTUTAR,
	P.DATE_ AS ODEMETARIHI,P.APPROVECODE AS BANKAONAYKODU,
	I.DATE_ AS FATURATARIHI,I.CARGOFICHENO AS KARGOFISNO,
	ITM.ITEMCODE AS URUNKODU,ITM.ITEMNAME AS URUNADI,OD.AMOUNT AS MIKTAR,
	OD.UNITPRICE AS BIRIMFIYAT,
	OD.LINETOTAL AS SATIRTOPLAMI
	
FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
WHERE O.ID=3515

SELECT 
	U.USERNAME_ AS KULLANICIADI,U.NAMESURNAME AS ADSOYAD,
	CT.CITY AS IL,T.TOWN AS ILCE,D.DISTRICT AS SEMT,A.ADDRESSTEXT AS ACIKADRES,
	O.ID AS SIPARISID,O.DATE_ AS TARIH,O.TOTALPRICE AS TOPLAMTUTAR,
	P.DATE_ AS ODEMETARIHI,P.APPROVECODE AS BANKAONAYKODU,
	I.DATE_ AS FATURATARIHI,I.CARGOFICHENO AS KARGOFISNO,
	ITM.ITEMCODE AS URUNKODU,ITM.ITEMNAME AS URUNADI,OD.AMOUNT AS MIKTAR,
	OD.UNITPRICE AS BIRIMFIYAT,
	OD.LINETOTAL AS SATIRTOPLAMI
	
FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
WHERE U.NAMESURNAME='Ceyda GEZG�NC�'

SELECT 
	U.USERNAME_ AS KULLANICIADI,U.NAMESURNAME AS ADSOYAD,
	CT.CITY AS IL,T.TOWN AS ILCE,D.DISTRICT AS SEMT,A.ADDRESSTEXT AS ACIKADRES,
	O.ID AS SIPARISID,O.DATE_ AS TARIH,O.TOTALPRICE AS TOPLAMTUTAR,
	P.DATE_ AS ODEMETARIHI,P.APPROVECODE AS BANKAONAYKODU,
	I.DATE_ AS FATURATARIHI,I.CARGOFICHENO AS KARGOFISNO,
	ITM.ITEMCODE AS URUNKODU,ITM.ITEMNAME AS URUNADI,OD.AMOUNT AS MIKTAR,
	OD.UNITPRICE AS BIRIMFIYAT,
	OD.LINETOTAL AS SATIRTOPLAMI
	
FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
WHERE O.ID=26121

--�EH�RLERE G�RE VER�LEN S�PAR��LER� TOPLAM OLARAK L�STELEME
SELECT 
CT.CITY AS SEHIRADI,
SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI,
SUM(OD.AMOUNT) AS TOPLAMSIPARIS_ADEDI,
COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI
	
FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
GROUP BY CT.CITY
ORDER BY CT.CITY

SELECT 
CT.CITY AS SEHIRADI,
SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI,
SUM(OD.AMOUNT) AS TOPLAMSIPARIS_ADEDI,
COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI
	
FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
GROUP BY CT.CITY
ORDER BY COUNT(OD.ID) DESC
--TOPLAM S�PAR�� SAYISINA G�RE SIRALADIK.

SELECT 
	CT.CITY AS SEHIRADI,
	SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI,
	SUM(OD.AMOUNT) AS TOPLAMSIPARIS_ADEDI,
	COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI
	
FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
GROUP BY CT.CITY
ORDER BY 2 DESC
--BURADA ORDER BY'DAN SONRA RAKAM YAZARSAK, �RNE�N 1 G�B� BU �U ANLAMA GEL�R 1.KOLONA G�RE SIRALA DEMEKT�R.
--ORDER BY 2 YAZARSAK 2.KOLONA G�RE SIRALA DEMEKT�R.

--�R�N KATEGOR�LER�NE G�RE S�PAR�� DA�ILIMI
SELECT 
	ITM.CATEGORY1,ITM.CATEGORY2,
	SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI,
	SUM(OD.AMOUNT) AS TOPLAMSIPARIS_ADEDI,
	COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI
	
FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
WHERE ITM.CATEGORY1='KOZMETIK'
GROUP BY ITM.CATEGORY1,ITM.CATEGORY2
ORDER BY 3 DESC

SELECT 
	ITM.CATEGORY1,ITM.CATEGORY2,ITM.CATEGORY3,
	SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI,
	SUM(OD.AMOUNT) AS TOPLAMSIPARIS_ADEDI,
	COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI,
	SUM(OD.LINETOTAL)/SUM(OD.AMOUNT) AS ORTALAMABIRIMFIYAT
FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
WHERE ITM.CATEGORY1='KOZMETIK'
GROUP BY ITM.CATEGORY1,ITM.CATEGORY2,ITM.CATEGORY3
ORDER BY 4 DESC


SELECT 
	ITM.CATEGORY1,
	SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI,
	SUM(OD.AMOUNT) AS TOPLAMSIPARIS_ADEDI,
	COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI,
	SUM(OD.LINETOTAL)/SUM(OD.AMOUNT) AS ORTALAMABIRIMFIYAT
FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
GROUP BY ITM.CATEGORY1
ORDER BY 4 DESC


--TAR�HE G�RE S�PAR�� DA�ILIMI
SELECT 

CONVERT(DATE,O.DATE_) AS TAR�H,
SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTAR,
SUM(OD.AMOUNT) AS TOPLAMSIPARIS_MIKTAR,
COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI

FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
GROUP BY CONVERT(DATE,O.DATE_)
ORDER BY CONVERT(DATE,O.DATE_)

--AYLARA G�RE S�PAR�� DA�ILIMI
SELECT 
DATEPART(YEAR,O.DATE_) AS YIL,
DATEPART(MONTH,O.DATE_) AS AY,
SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTAR,
SUM(OD.AMOUNT) AS TOPLAMSIPARIS_MIKTAR,
COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI

FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
GROUP BY DATEPART(YEAR,O.DATE_),DATEPART(MONTH,O.DATE_)
ORDER BY DATEPART(YEAR,O.DATE_),DATEPART(MONTH,O.DATE_)


SELECT 
DATEPART(YEAR,O.DATE_) AS YIL,
DATEPART(MONTH,O.DATE_) AS AY,
CASE
	WHEN DATEPART(MONTH,O.DATE_)=1 THEN 'OCAK'
	WHEN DATEPART(MONTH,O.DATE_)=2 THEN '�UBAT'
	WHEN DATEPART(MONTH,O.DATE_)=3 THEN 'MART'
	WHEN DATEPART(MONTH,O.DATE_)=4 THEN 'N�SAN'
	WHEN DATEPART(MONTH,O.DATE_)=5 THEN 'MAYIS'
	WHEN DATEPART(MONTH,O.DATE_)=6 THEN 'HAZ�RAN'
	WHEN DATEPART(MONTH,O.DATE_)=7 THEN 'TEMMUZ'
	WHEN DATEPART(MONTH,O.DATE_)=8 THEN 'A�USTOS'
	WHEN DATEPART(MONTH,O.DATE_)=9 THEN 'EYL�L'
	WHEN DATEPART(MONTH,O.DATE_)=10 THEN 'EK�M'
	WHEN DATEPART(MONTH,O.DATE_)=11 THEN 'KASIM'
	WHEN DATEPART(MONTH,O.DATE_)=12 THEN 'ARALIK'
END AS AYADI,
SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTAR,
SUM(OD.AMOUNT) AS TOPLAMSIPARIS_MIKTAR,
COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI

FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
GROUP BY DATEPART(YEAR,O.DATE_),DATEPART(MONTH,O.DATE_)
ORDER BY DATEPART(YEAR,O.DATE_),DATEPART(MONTH,O.DATE_)


SELECT 
DATEPART(YEAR,O.DATE_) AS YIL,
DATEPART(MONTH,O.DATE_) AS AY,
CASE
	WHEN DATEPART(MONTH,O.DATE_)=1 THEN 'OCAK'
	WHEN DATEPART(MONTH,O.DATE_)=2 THEN '�UBAT'
	WHEN DATEPART(MONTH,O.DATE_)=3 THEN 'MART'
	WHEN DATEPART(MONTH,O.DATE_)=4 THEN 'N�SAN'
	WHEN DATEPART(MONTH,O.DATE_)=5 THEN 'MAYIS'
	WHEN DATEPART(MONTH,O.DATE_)=6 THEN 'HAZ�RAN'
	WHEN DATEPART(MONTH,O.DATE_)=7 THEN 'TEMMUZ'
	WHEN DATEPART(MONTH,O.DATE_)=8 THEN 'A�USTOS'
	WHEN DATEPART(MONTH,O.DATE_)=9 THEN 'EYL�L'
	WHEN DATEPART(MONTH,O.DATE_)=10 THEN 'EK�M'
	WHEN DATEPART(MONTH,O.DATE_)=11 THEN 'KASIM'
	WHEN DATEPART(MONTH,O.DATE_)=12 THEN 'ARALIK'
END AS AYADI,
SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTAR,
SUM(OD.AMOUNT) AS TOPLAMSIPARIS_MIKTAR,
COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI

FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
GROUP BY DATEPART(YEAR,O.DATE_),DATEPART(MONTH,O.DATE_)
ORDER BY DATEPART(MONTH,O.DATE_),DATEPART(YEAR,O.DATE_)

--�DEME T�R�NE G�RE DA�ILIM
SELECT
PAYMENTTYPE AS ODEMETURU,
SUM(PAYMENTTOTAL) AS TOPLAMTUTAR
FROM PAYMENTS

GROUP BY PAYMENTTYPE


SELECT
PAYMENTTYPE AS ODEMETURU,
CASE
	WHEN PAYMENTTYPE=1 THEN 'KRED� KARTI'
	WHEN PAYMENTTYPE=2 THEN 'BANKA HAVALES�'
END AS ODEMETURU_ACIKLAMA,
SUM(PAYMENTTOTAL) AS TOPLAMTUTAR
FROM PAYMENTS
GROUP BY PAYMENTTYPE


SELECT
DATEPART(YEAR,DATE_) AS YIL,
DATEPART(MONTH,DATE_) AS AY,
CASE
	WHEN PAYMENTTYPE=1 THEN 'KRED� KARTI'
	WHEN PAYMENTTYPE=2 THEN 'BANKA HAVALES�'
END AS ODEMETURU_ACIKLAMA,
SUM(PAYMENTTOTAL) AS TOPLAMTUTAR
FROM PAYMENTS
GROUP BY DATEPART(MONTH,DATE_),PAYMENTTYPE,DATEPART(YEAR,DATE_)
ORDER BY DATEPART(YEAR,DATE_),DATEPART(MONTH,DATE_)


--ORTALAMA TESL�MAT S�RES�
SELECT 
O.ID AS SIPARISID,
O.DATE_ AS SIPARISTARIHI,
I.DATE_ AS FATURATARIHI,
DATEDIFF(HOUR,O.DATE_,I.DATE_) AS TESLIMATSURESI_SAAT
FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID

	SELECT DATEDIFF(DAY,'2019-02-05 23:56:58.000','2019-02-06 10:54:58.000')
	SELECT DATEDIFF(HOUR,'2019-02-05 23:56:58.000','2019-02-06 10:54:58.000')
	SELECT DATEDIFF(MINUTE,'2019-02-05 23:56:58.000','2019-02-06 10:54:58.000')

SELECT 
--O.ID AS SIPARISID,
--O.DATE_ AS SIPARISTARIHI,
--I.DATE_ AS FATURATARIHI,
--ORTALAMA ALMAK ���N YUKARIDAK� �� DE�ER� ALMIYORUZ.
MIN(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENKISA_TESLIMAT_SURESI,
AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ORTALAMA_TESLIMATSURESI_SAAT,
MAX(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENUZUN_TESLIMAT_SURESI
FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID


SELECT 
U.ID,U.NAMESURNAME,
AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ORTALAMA_TESLIMATSURESI_SAAT,
MIN(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENKISA_TESLIMAT_SURESI,
MAX(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENUZUN_TESLIMAT_SURESI,
SUM(O.TOTALPRICE) AS TOPLAM_SIPARIS_TUTARI,
COUNT(O.ID) AS SIPARISSAYISI
FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
GROUP BY U.ID,U.NAMESURNAME
HAVING AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_))>30
ORDER BY 6 DESC




SELECT 
DATEPART(YEAR,O.DATE_) AS YIL,
DATEPART(MONTH,O.DATE_) AS AY,
AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ORTALAMA_TESLIMATSURESI_SAAT,
MIN(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENKISA_TESLIMAT_SURESI,
MAX(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENUZUN_TESLIMAT_SURESI,
SUM(O.TOTALPRICE) AS TOPLAM_SIPARIS_TUTARI,
COUNT(O.ID) AS SIPARISSAYISI
FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
GROUP BY DATEPART(YEAR,O.DATE_),DATEPART(MONTH,O.DATE_)

ORDER BY 1,2

SELECT 
CT.CITY,
AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ORTALAMA_TESLIMATSURESI_SAAT,
MIN(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENKISA_TESLIMAT_SURESI,
MAX(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENUZUN_TESLIMAT_SURESI,
SUM(O.TOTALPRICE) AS TOPLAM_SIPARIS_TUTARI,
COUNT(O.ID) AS SIPARISSAYISI
FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
GROUP BY CT.CITY
ORDER BY 2 DESC