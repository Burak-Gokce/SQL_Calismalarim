Select * from Products

Select ProductId as Id,ProductName as Name_ from Products

Select ProductId  Id,ProductName  Name_ from Products

Select p.ProductName,p.UnitsInStock * p.UnitPrice as Total from Products p

Select p.ProductName + '-' + p.QuantityPerUnit from Products p

Select 'Engin Demiroð' as Egitmen

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
--veriyi burda ürün ismine göre alfabetik olarak sýraladýk.

Select * from Products order by UnitPrice
--burda veriyi birim fiyatýna göre küçükten büyüðe doðru sýraladýk.

Select * from Products order by UnitPrice desc
--burada desc komutuyla veriyi tam tersi olacak þekilde büyükten küçüðe doðru sýraladýk.
Select * from Products order by ProductName desc
--Z den A ya sýraladýk desc komutuyla. desc = descending, asc = ascending

Select * from Products order by UnitPrice,ProductName
--ilk önce fiyata göre sonra isime göre sýralamýþtýr.

Select * from Products order by UnitPrice asc,ProductName desc

Select * from Products where ProductName like 'ch%'
--ürün ismi 'ch' ile baþlayanlarý seç demektir.

Select * from Products where ProductName like '%a'
--sonu 'a' ile bitenleri seç demektir.

Select * from Products where ProductName like '%ch%'
--baþý ya da sonu önemli deðil içinde 'ch' geçen her þeyi getir demektir.

Select * from Products where UnitPrice between 10 and 50
--birim fiyatý 10 ile 50 arasýnda olanlarý seçiyoruz.
Select * from Products where UnitPrice between 10 and 50 order by UnitPrice
--birim fiyatlarýna göre sýraladýk 10 ile 50 arasýndaki deðerleri

Select * from Products where CategoryID in (1,2)
--kategori ID'si 1 ve 2 olanlarý getir demek.

--Aggregation Functions
Select Count(*) as [Urun Sayisi] from Products
--Kaç adet ürün var elimizde onu veriyor bize. * satýr sayýsýný veriyor.
Select Count(ProductName) from Products
Select Count(*) from Customers
Select Count(Region) from Customers
--Count fonksiyonu Null deðerleri saymaz.

Select Min(UnitPrice) from Products
--en küçük birim deðeri verdi.
Select Max(UnitPrice) from Products
--en büyük birim deðeri verdi.
Select Avg(UnitPrice) from Products
--birim fiyatlarýn ortalamasýný aldýk.
Select Sum(UnitPrice * Quantity) as Kazanç from  [Order Details]
Select Rand()
--bize rast gele sayý üretmeye yarýyor.

Select LEFT('Engin Demiroð', 3)
--metnin solundan 3 karakter al demiþ olduk.
Select LEFT(ProductName,3) from Products
--ürün isimlerinin soldan 3 karakterini almýþ olduk.

Select RIGHT('Engin Demiroð', 3)
--bu sefer saðdan 3 tane karakter aldýk.
Select RIGHT(ProductName,3) from Products
--tüm isimlerin saðdan 3 tane karakterini aldýk.

Select LEN('Engin Demiroð')
--karakter sayýsýný veriyor.
Select ProductName, LEN(ProductName) as Karakter from Products

Select LOWER('EnGÝN dEmirOÐ')
--bütün harfleri küçük harfe dönüþtürüyor.
Select UPPER('EnGÝN dEmirOÐ')
--Bütün harfleri Büyük harfe çevirdi.

Select TRIM('       engin demiroð      ')
--aradaki boþluklarý siliyor.
Select * from Products where Trim(ProductName) = 'Chai'
--bu fonksiyonu çalýþtýrmak için chai yazan deðeri edit kýsmýndan düzenleyerek
--baþýna boþluk býraktýk ve fonksiyonun çalýþmasýný saðladýk.

Select * from Products where LEN(ProductName)>10 
--isimdeki karakter sayýsý 10'dan büyük olanlarý getirdi.

Select LTRIM('       engin demiroð      ')
--soldaki boþluðu silmeye yarýyor.
Select RTRIM('       engin demiroð      ')
--saðdaki boþluðu silmeye yarýyor.

Select REVERSE('Engin Demiroð')
--Kelimeleri tersten yazdýrýyor.

Select CHARINDEX('n','Engin Demiroð',1)
--charindex bir metin içerisinde baþka bir metin geçiyor mu diye sorgular.Burada
--ilk baþta sorgulanacak deðer sonra metin en sonunda da kaçýncý karakterden
--baþlayacaðýný soruyor.
Select CHARINDEX('n','Engin Demiroð',3)

Select ProductName from Products where CHARINDEX(' ', ProductName,1)>0
--boþluk aradýðýmýz için büyüktür sýfýr iþaretini koyduk.
Select ProductName from Products where CHARINDEX('Anton', ProductName,1)>0
--içinde Anton olanlarý aradýk.


Select REPLACE('Engin Demiroð',' ','_')
--boþluk karakterini _ iþareti ile deðiþtirdik.

Select REPLACE(ProductName,' ','_') from Products
--ürün isimlerindeki boþluklarý _ iþareti ile deðiþtirdik.

Select SUBSTRING('Engin Demiroð',1,5)
--1.karakterden itibaren 5 karakter getirdi.

Select Ascii('B')
Select Char(65)

Select Distinct(Country) from Customers
--distinct komutu bir kolondaki tekrarlayan kayýtlarý tekrarlamadan bir kere getirmeye yarar.
--Burada ülkeler birden fazla tekrarlandýðý için distinct ile tekilleþtiriyoruz.
Select Distinct(Country) from Customers order by Country
Select Distinct Country,City from Customers order by Country
--eðer iki grupla çalýþmak istersek böyle kullanabiliriz.Burada ayný ülke ve
--ayný þehir sadece bir kere gelir.

Select Country from Customers group by Country
--burada group by komutuyla ülkelerin tekrar etmesini engelliyoruz ve gerçek
--ülke sayýsýný öðreniyoruz.
Select Country,Count(*) Adet from Customers group by Country
--burada ülkelerin sayýsýný elde ettik.
Select Country,City,Count(*) Adet from Customers group by Country,City
--Bu ülke ve þehirden kaçar tane var.

--Ülke ve þehirler bazýnda birden fazla müþterimiz nerede var?Çözümü aþaðýda.
Select Country,City,Count(*) Adet from Customers
group by Country,City having Count(*)>1
--burada sayýsý 1'den büyük olanlarý getirdik.
Select Country,City,Count(*) Adet from Customers
group by Country,City having Count(*)>1 order by Country
--burada tüm iþlemlerden sonra ülkelere göre sýraladýk.

Select Country,City,Count(*) Adet from Customers
where City <> 'Nantes'
group by Country,City having Count(*)>1 
order by Country
--deðeri Nan dan farklý olanlarý getir demektir.

Select * from Products inner join Categories 
on Products.CategoryID = Categories.CategoryID
--inner join burada ortaklarý eþleþtiriyor.Örneðin Products ve Categories'de
--CategoryID ortak ve buna göre eþleþtirme yapýyor.Ortak deðer yoksa eþleþmez.
Select * from Products inner join Categories 
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice>20
--UnitPrice'ý 20'nin üstünde olanlarý getir dedik.
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
--burada toplam 3 tabloyu birleþtirdik ve satýþ adetini elde ettik.

Select p.ProductName,o.OrderDate,od.Quantity * od.UnitPrice as Total
from Products p inner join [Order Details] od 
on p.ProductID = od.ProductID
inner join Orders o
on o.OrderID = od.OrderID
order by p.ProductName,o.OrderDate
--Tüm deðerleri çaðýrmak yerine sadece istediðimiz deðerleri elde ettik.

select * from Products p left join [Order Details] od
on p.ProductID = od.ProductID
where od.ProductID is null
--satamadýðýmýz bir ürün var mý diye sorguladýk ve satamadýðýmýz ürün yok.

select * from Customers c inner join Orders o
on c.CustomerID = o.CustomerID

select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID
--yukarýda 830 deðer geldi burada 832 deðer geldi.
--left soldaki tabloda olup, saðdaki tabloda olmayanlarý da getir demektir.
--Hem olanlarý hem olmayanlarý getirdik.

select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID
where o.CustomerID is null
--çýkan sonuçta 2 deðer var biz bu iki müþteriye hiç ürün satamamýþýz.

Select * from Orders o right join Customers c
on o.CustomerID = c.CustomerID 
where o.CustomerID is null
--sað tabloda olup, sol tabloda olmayanlarý da getirdi.
--müþteri olup, sipariþ vermeyenleri getirdi.

Select c.ContactName,c.CustomerID from Orders o right join Customers c
on o.CustomerID = c.CustomerID 
where o.CustomerID is null
--sadece istediðimiz kolonlarý getirdik.

Select * from Customers c full join Orders o
on o.CustomerID = c.CustomerID
--832 eþleþen kayýt geldi.Full join hem lefti hem rightý kapsýyor.

Select * from Employees e left join Orders o
on e.EmployeeID = o.EmployeeID
where o.CustomerID is null
--Satýþ yapamayan hiç personelimiz yok.Hepsi satýþ yapmýþ.

Select p.ProductName,Count(*) as Adet from Products p inner join [Order Details] o
on p.ProductID = o.ProductID
group by p.ProductName
order by p.ProductName
--burada group by yöntemiyle isimleri tekilleþtirdik ve Count(*) yöntemiyle de
--bize her grubun sayýsýný verir.Hangi üründen kaç adet satmýþýz cevabý burada.
Select p.ProductName,Count(*) as Adet from Products p inner join [Order Details] o
on p.ProductID = o.ProductID
where o.Discount>0
group by p.ProductName
order by p.ProductName
--Hangi ürünlerde indirim yapýlmýþ onu gösteriyor.

Select c.CategoryName,Count(*) as Adet from Products p inner join Categories c
on p.CategoryID = c.CategoryID 
inner join [Order Details] od
on od.ProductID = p.ProductID
group by c.CategoryName
--Hangi kategoriden kaç tane satmýþýz.Cevabýmýz yukarýda.

Select e2.FirstName + ' ' + e2.LastName as Personel,
e1.FirstName + ' ' + e1.LastName as Üstü
from Employees e1 inner join Employees e2
on e1.EmployeeID = e2.ReportsTo
--Burda Andrew Fuller'ýn üstü olmadýðý için personellerin arasýnda getirmedi.

Select * from Employees

insert into Categories (CategoryName,Description)
values('Test Category','Test Category Description')
--Categories tablosuna parantez içerisindeki kolonlara valuesun içindeki
--deðerleri ekledik.

insert into [Order Details] values(10248,12,12,10,0)
--eðer ben bir kolonu vermezsem bütün kolon deðerlerini values içinde vermem gerek.

update Categories set CategoryName = 'Test Category 2'
where CategoryID = 10
--sadece CategoryID 10 olan kategoriyi güncelle demek.

update Categories set CategoryName = 'Test Category 3'
where CategoryID >= 9
--kategori ýdsi 9 ve 9 dan büyük olanlar deðiþtirildi.

update Territories set TerritoryDescription = 'Ýç Anadolu'
--Bölgelerdeki isimlerin hepsini Ýç Anadolu ile deðiþtirdik.

update Categories set CategoryName = 'Test Category 3',
Description = 'Test Category 3 Description'
where CategoryID >= 9
--Birden fazla kolonu ayný anda güncelledik.

update Territories set TerritoryDescription = 'Marmara Bölgesi'
where RegionID = 2

update Territories set TerritoryDescription = 'Akdeniz Bölgesi'
where RegionID = 3

update Territories set TerritoryDescription = 'Doðu Anadolu Bölgesi'
where RegionID = 4

delete from Categories where CategoryID >= 9
--kategori ýdsi 9 ve 9 dan büyük olanlarý sildi.

Select * from CustomersWork

insert into CustomersWork(CustomerId,CompanyName,ContactName)
select CustomerId,CompanyName,ContactName from Customers
--Burada insert to dan sonra values yazmadýk onun yerine Select komutunu
--kullanarak Customers tablosundan verdiðimiz kolanlarý insert ettik.

delete from CustomersWork

insert into CustomersWork(CustomerId,CompanyName,ContactName)
select CustomerId,CompanyName,ContactName from Customers
where ContactName like '%en%'
--içinde en geçenleri insert etmiþ olduk.

update Customers set CompanyName = CustomersWork.CompanyName
from
Customers inner join CustomersWork
on Customers.CustomerID = CustomersWork.CustomerID
where CustomersWork.CompanyName like '%Test%'
--burada Customersdeki deðerleri  customerswork deðerlerle güncelledik.
--join iþlemi ile beraber.

Select * from Customers

delete Customers 
from Customers inner join CustomersWork
on Customers.CustomerID = CustomersWork.CustomerID
where CustomersWork.CompanyName like '%Test%'
--burada HATA verdi.Çünkü baþka tablolarla iliþkili.

Select CustomerID,CompanyName,ContactName from Customers
union
Select * from CustomersWork
--union komutu inner joinden farklý olarak alt alta ekler.Ýnner join yan yana
--ekler.Ayrýca sadece farklý deðerleri ekler.Mesela normalde burada iki tablonun
--birleþiminden 108 satýr oluþurken unionla 95 satýr oluþtu.Çünkü sadece farklý
--olan 4 deðeri ekledi.Ayrýca kolon sayýlarýnýn eþit olmasý gerekir.


