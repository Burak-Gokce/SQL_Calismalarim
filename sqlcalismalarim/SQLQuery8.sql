Select * from Products

Select ProductId as Id,ProductName as Name_ from Products

Select ProductId  Id,ProductName  Name_ from Products

Select p.ProductName,p.UnitsInStock * p.UnitPrice as Total from Products p

Select p.ProductName + '-' + p.QuantityPerUnit from Products p

Select 'Engin Demiro�' as Egitmen

Select 9*8 as Sonuc

Select * from Products Where CategoryID = 1

Select * from Products Where UnitsInStock>10

Select * from Products Where UnitsInStock<5

Select * from Products Where UnitsInStock = 0 and UnitsOnOrder>0

Select p.ProductName from Products as p Where UnitsInStock = 0 and UnitsOnOrder>0

Select * from Products where UnitsInStock=0 or UnitsOnOrder=0

Select * from Products where not ProductName='Chai' and UnitsInStock=0

Select * from Products where not ProductName='Perth Pasties' and UnitsInStock=0

Select * from Products order by ProductName
--veriyi burda �r�n ismine g�re alfabetik olarak s�ralad�k.

Select * from Products order by UnitPrice
--burda veriyi birim fiyat�na g�re k���kten b�y��e do�ru s�ralad�k.

Select * from Products order by UnitPrice desc
--burada desc komutuyla veriyi tam tersi olacak �ekilde b�y�kten k����e do�ru s�ralad�k.
Select * from Products order by ProductName desc
--Z den A ya s�ralad�k desc komutuyla. desc = descending, asc = ascending

Select * from Products order by UnitPrice,ProductName
--ilk �nce fiyata g�re sonra isime g�re s�ralam��t�r.

Select * from Products order by UnitPrice asc,ProductName desc

Select * from Products where ProductName like 'ch%'
--�r�n ismi 'ch' ile ba�layanlar� se� demektir.

Select * from Products where ProductName like '%a'
--sonu 'a' ile bitenleri se� demektir.

Select * from Products where ProductName like '%ch%'
--ba�� ya da sonu �nemli de�il i�inde 'ch' ge�en her �eyi getir demektir.

Select * from Products where UnitPrice between 10 and 50
--birim fiyat� 10 ile 50 aras�nda olanlar� se�iyoruz.
Select * from Products where UnitPrice between 10 and 50 order by UnitPrice
--birim fiyatlar�na g�re s�ralad�k 10 ile 50 aras�ndaki de�erleri

Select * from Products where CategoryID in (1,2)
--kategori ID'si 1 ve 2 olanlar� getir demek.

--Aggregation Functions
Select Count(*) as [Urun Sayisi] from Products
--Ka� adet �r�n var elimizde onu veriyor bize. * sat�r say�s�n� veriyor.
Select Count(ProductName) from Products
Select Count(*) from Customers
Select Count(Region) from Customers
--Count fonksiyonu Null de�erleri saymaz.

Select Min(UnitPrice) from Products
--en k���k birim de�eri verdi.
Select Max(UnitPrice) from Products
--en b�y�k birim de�eri verdi.
Select Avg(UnitPrice) from Products
--birim fiyatlar�n ortalamas�n� ald�k.
Select Sum(UnitPrice * Quantity) as Kazan� from  [Order Details]
Select Rand()
--bize rast gele say� �retmeye yar�yor.

Select LEFT('Engin Demiro�', 3)
--metnin solundan 3 karakter al demi� olduk.
Select LEFT(ProductName,3) from Products
--�r�n isimlerinin soldan 3 karakterini alm�� olduk.

Select RIGHT('Engin Demiro�', 3)
--bu sefer sa�dan 3 tane karakter ald�k.
Select RIGHT(ProductName,3) from Products
--t�m isimlerin sa�dan 3 tane karakterini ald�k.

Select LEN('Engin Demiro�')
--karakter say�s�n� veriyor.
Select ProductName, LEN(ProductName) as Karakter from Products

Select LOWER('EnG�N dEmirO�')
--b�t�n harfleri k���k harfe d�n��t�r�yor.
Select UPPER('EnG�N dEmirO�')
--B�t�n harfleri B�y�k harfe �evirdi.

Select TRIM('       engin demiro�      ')
--aradaki bo�luklar� siliyor.
Select * from Products where Trim(ProductName) = 'Chai'
--bu fonksiyonu �al��t�rmak i�in chai yazan de�eri edit k�sm�ndan d�zenleyerek
--ba��na bo�luk b�rakt�k ve fonksiyonun �al��mas�n� sa�lad�k.

Select * from Products where LEN(ProductName)>10 
--isimdeki karakter say�s� 10'dan b�y�k olanlar� getirdi.

Select LTRIM('       engin demiro�      ')
--soldaki bo�lu�u silmeye yar�yor.
Select RTRIM('       engin demiro�      ')
--sa�daki bo�lu�u silmeye yar�yor.

Select REVERSE('Engin Demiro�')
--Kelimeleri tersten yazd�r�yor.

Select CHARINDEX('n','Engin Demiro�',1)
--charindex bir metin i�erisinde ba�ka bir metin ge�iyor mu diye sorgular.Burada
--ilk ba�ta sorgulanacak de�er sonra metin en sonunda da ka��nc� karakterden
--ba�layaca��n� soruyor.
Select CHARINDEX('n','Engin Demiro�',3)

Select ProductName from Products where CHARINDEX(' ', ProductName,1)>0
--bo�luk arad���m�z i�in b�y�kt�r s�f�r i�aretini koyduk.
Select ProductName from Products where CHARINDEX('Anton', ProductName,1)>0
--i�inde Anton olanlar� arad�k.


Select REPLACE('Engin Demiro�',' ','_')
--bo�luk karakterini _ i�areti ile de�i�tirdik.

Select REPLACE(ProductName,' ','_') from Products
--�r�n isimlerindeki bo�luklar� _ i�areti ile de�i�tirdik.

Select SUBSTRING('Engin Demiro�',1,5)
--1.karakterden itibaren 5 karakter getirdi.

Select Ascii('B')
Select Char(65)

Select Distinct(Country) from Customers
--distinct komutu bir kolondaki tekrarlayan kay�tlar� tekrarlamadan bir kere getirmeye yarar.
--Burada �lkeler birden fazla tekrarland��� i�in distinct ile tekille�tiriyoruz.
Select Distinct(Country) from Customers order by Country
Select Distinct Country,City from Customers order by Country
--e�er iki grupla �al��mak istersek b�yle kullanabiliriz.Burada ayn� �lke ve
--ayn� �ehir sadece bir kere gelir.

Select Country from Customers group by Country
--burada group by komutuyla �lkelerin tekrar etmesini engelliyoruz ve ger�ek
--�lke say�s�n� ��reniyoruz.
Select Country,Count(*) Adet from Customers group by Country
--burada �lkelerin say�s�n� elde ettik.
Select Country,City,Count(*) Adet from Customers group by Country,City
--Bu �lke ve �ehirden ka�ar tane var.

--�lke ve �ehirler baz�nda birden fazla m��terimiz nerede var?��z�m� a�a��da.
Select Country,City,Count(*) Adet from Customers
group by Country,City having Count(*)>1
--burada say�s� 1'den b�y�k olanlar� getirdik.
Select Country,City,Count(*) Adet from Customers
group by Country,City having Count(*)>1 order by Country
--burada t�m i�lemlerden sonra �lkelere g�re s�ralad�k.

Select Country,City,Count(*) Adet from Customers
where City <> 'Nantes'
group by Country,City having Count(*)>1 
order by Country
--de�eri Nan dan farkl� olanlar� getir demektir.

Select * from Products inner join Categories 
on Products.CategoryID = Categories.CategoryID
--inner join burada ortaklar� e�le�tiriyor.�rne�in Products ve Categories'de
--CategoryID ortak ve buna g�re e�le�tirme yap�yor.Ortak de�er yoksa e�le�mez.
Select * from Products inner join Categories 
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice>20
--UnitPrice'� 20'nin �st�nde olanlar� getir dedik.
Select * from Products inner join Categories 
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice>20
order by Categories.CategoryID

Select * from Products p inner join Categories c 
on p.CategoryID = c.CategoryID
where p.UnitPrice>20
order by c.CategoryID

Select * from Products p inner join [Order Details] od 
on p.ProductID = od.ProductID
inner join Orders o
on o.OrderID = od.OrderID
--burada toplam 3 tabloyu birle�tirdik ve sat�� adetini elde ettik.

Select p.ProductName,o.OrderDate,od.Quantity * od.UnitPrice as Total
from Products p inner join [Order Details] od 
on p.ProductID = od.ProductID
inner join Orders o
on o.OrderID = od.OrderID
order by p.ProductName,o.OrderDate
--T�m de�erleri �a��rmak yerine sadece istedi�imiz de�erleri elde ettik.

select * from Products p left join [Order Details] od
on p.ProductID = od.ProductID
where od.ProductID is null
--satamad���m�z bir �r�n var m� diye sorgulad�k ve satamad���m�z �r�n yok.

select * from Customers c inner join Orders o
on c.CustomerID = o.CustomerID

select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID
--yukar�da 830 de�er geldi burada 832 de�er geldi.
--left soldaki tabloda olup, sa�daki tabloda olmayanlar� da getir demektir.
--Hem olanlar� hem olmayanlar� getirdik.

select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID
where o.CustomerID is null
--��kan sonu�ta 2 de�er var biz bu iki m��teriye hi� �r�n satamam���z.

Select * from Orders o right join Customers c
on o.CustomerID = c.CustomerID 
where o.CustomerID is null
--sa� tabloda olup, sol tabloda olmayanlar� da getirdi.
--m��teri olup, sipari� vermeyenleri getirdi.

Select c.ContactName,c.CustomerID from Orders o right join Customers c
on o.CustomerID = c.CustomerID 
where o.CustomerID is null
--sadece istedi�imiz kolonlar� getirdik.

Select * from Customers c full join Orders o
on o.CustomerID = c.CustomerID
--832 e�le�en kay�t geldi.Full join hem lefti hem right� kaps�yor.

Select * from Employees e left join Orders o
on e.EmployeeID = o.EmployeeID
where o.CustomerID is null
--Sat�� yapamayan hi� personelimiz yok.Hepsi sat�� yapm��.

Select p.ProductName,Count(*) as Adet from Products p inner join [Order Details] o
on p.ProductID = o.ProductID
group by p.ProductName
order by p.ProductName
--burada group by y�ntemiyle isimleri tekille�tirdik ve Count(*) y�ntemiyle de
--bize her grubun say�s�n� verir.Hangi �r�nden ka� adet satm���z cevab� burada.
Select p.ProductName,Count(*) as Adet from Products p inner join [Order Details] o
on p.ProductID = o.ProductID
where o.Discount>0
group by p.ProductName
order by p.ProductName
--Hangi �r�nlerde indirim yap�lm�� onu g�steriyor.

Select c.CategoryName,Count(*) as Adet from Products p inner join Categories c
on p.CategoryID = c.CategoryID 
inner join [Order Details] od
on od.ProductID = p.ProductID
group by c.CategoryName
--Hangi kategoriden ka� tane satm���z.Cevab�m�z yukar�da.

Select e2.FirstName + ' ' + e2.LastName as Personel,
e1.FirstName + ' ' + e1.LastName as �st�
from Employees e1 inner join Employees e2
on e1.EmployeeID = e2.ReportsTo
--Burda Andrew Fuller'�n �st� olmad��� i�in personellerin aras�nda getirmedi.

Select * from Employees

insert into Categories (CategoryName,Description)
values('Test Category','Test Category Description')
--Categories tablosuna parantez i�erisindeki kolonlara valuesun i�indeki
--de�erleri ekledik.

insert into [Order Details] values(10248,12,12,10,0)
--e�er ben bir kolonu vermezsem b�t�n kolon de�erlerini values i�inde vermem gerek.

update Categories set CategoryName = 'Test Category 2'
where CategoryID = 10
--sadece CategoryID 10 olan kategoriyi g�ncelle demek.

update Categories set CategoryName = 'Test Category 3'
where CategoryID >= 9
--kategori �dsi 9 ve 9 dan b�y�k olanlar de�i�tirildi.

update Territories set TerritoryDescription = '�� Anadolu'
--B�lgelerdeki isimlerin hepsini �� Anadolu ile de�i�tirdik.

update Categories set CategoryName = 'Test Category 3',
Description = 'Test Category 3 Description'
where CategoryID >= 9
--Birden fazla kolonu ayn� anda g�ncelledik.

update Territories set TerritoryDescription = 'Marmara B�lgesi'
where RegionID = 2

update Territories set TerritoryDescription = 'Akdeniz B�lgesi'
where RegionID = 3

update Territories set TerritoryDescription = 'Do�u Anadolu B�lgesi'
where RegionID = 4

delete from Categories where CategoryID >= 9
--kategori �dsi 9 ve 9 dan b�y�k olanlar� sildi.

Select * from CustomersWork

insert into CustomersWork(CustomerId,CompanyName,ContactName)
select CustomerId,CompanyName,ContactName from Customers
--Burada insert to dan sonra values yazmad�k onun yerine Select komutunu
--kullanarak Customers tablosundan verdi�imiz kolanlar� insert ettik.

delete from CustomersWork

insert into CustomersWork(CustomerId,CompanyName,ContactName)
select CustomerId,CompanyName,ContactName from Customers
where ContactName like '%en%'
--i�inde en ge�enleri insert etmi� olduk.

update Customers set CompanyName = CustomersWork.CompanyName
from
Customers inner join CustomersWork
on Customers.CustomerID = CustomersWork.CustomerID
where CustomersWork.CompanyName like '%Test%'
--burada Customersdeki de�erleri  customerswork de�erlerle g�ncelledik.
--join i�lemi ile beraber.

Select * from Customers

delete Customers 
from Customers inner join CustomersWork
on Customers.CustomerID = CustomersWork.CustomerID
where CustomersWork.CompanyName like '%Test%'
--burada HATA verdi.��nk� ba�ka tablolarla ili�kili.

Select CustomerID,CompanyName,ContactName from Customers
union
Select * from CustomersWork
--union komutu inner joinden farkl� olarak alt alta ekler.�nner join yan yana
--ekler.Ayr�ca sadece farkl� de�erleri ekler.Mesela normalde burada iki tablonun
--birle�iminden 108 sat�r olu�urken unionla 95 sat�r olu�tu.��nk� sadece farkl�
--olan 4 de�eri ekledi.Ayr�ca kolon say�lar�n�n e�it olmas� gerekir.


