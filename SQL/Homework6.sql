--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

--film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?

SELECT ROUND(AVG(rental_rate),3) FROM film;  --2.980

--film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
SELECT COUNT(*) FROM film
where title like 'C%';     ---92


--film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
SELECT MAX(length) FROM film
where rental_rate=0.99;



--film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
SELECT COUNT(DISTINCT(replacement_cost)) FROM film
where length>150;  --21