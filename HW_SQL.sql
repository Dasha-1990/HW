Схема БД состоит из четырех таблиц:
Product(maker, model, type)
PC(code, model, speed, ram, hd, cd, price)
Laptop(code, model, speed, ram, hd, price, screen)
Printer(code, model, color, type, price)
Таблица Product представляет производителя (maker), номер модели (model) и тип ('PC' - ПК, 'Laptop' - ПК-блокнот или 'Printer' - принтер). Предполагается, что номера моделей в таблице Product уникальны для всех производителей и типов продуктов. В таблице PC для каждого ПК, однозначно определяемого уникальным кодом – code, указаны модель – model (внешний ключ к таблице Product), скорость - speed (процессора в мегагерцах), объем памяти - ram (в мегабайтах), размер диска - hd (в гигабайтах), скорость считывающего устройства - cd (например, '4x') и цена - price (в долларах). Таблица Laptop аналогична таблице РС за исключением того, что вместо скорости CD содержит размер экрана -screen (в дюймах). В таблице Printer для каждой модели принтера указывается, является ли он цветным - color ('y', если цветной), тип принтера - type (лазерный – 'Laser', струйный – 'Jet' или матричный – 'Matrix') и цена - price.


Задание: 1 (Serge I: 2002-09-30)
Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd
Решение:
SELECT model, speed, hd FROM PC WHERE PRICE < 500


Задание:2 Найдите производителей принтеров. Вывести: maker

Решение: SELECT maker FROM Product WHERE type = 'Printer' Group By maker

Задание:3 Задание: 3 (Serge I: 2002-09-30)
Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.

Решение: SELECT model, ram, screen FROM Laptop WHERE price > 1000

Задание:4 
Найдите все записи таблицы Printer для цветных принтеров.

Решение:
SELECT * FROM Printer WHERE color = 'y'


Задание: 5
Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.


Решение:
SELECT PC.model, PC.speed, PC.hd FROM PC WHERE (PC.cd = '12x' OR PC.cd = '24x') AND price < 600



Задание: 6 
Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость


Решение:
SELECT maker, speed FROM Laptop
INNER JOIN (SELECT * FROM Product WHERE type='laptop')
THIS_Table ON laptop.model=THIS_Table.model WHERE hd >= 10 GROUP BY maker,speed


Задание: 7 
Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).


Решение:SELECT DISTINCT PC.model, price
FROM PC INNER JOIN Product ON PC.model= Product.model WHERE maker = 'B'
UNION
SELECT DISTINCT Laptop.model, price
FROM Laptop INNER JOIN Product ON Laptop.model= Product.model WHERE maker = 'B'
UNION
SELECT DISTINCT Printer.model, price
FROM Printer INNER JOIN Product ON Printer.model= Product.model WHERE maker = 'B'



Задание: 8 
Найдите производителя, выпускающего ПК, но не ПК-блокноты

SELECT maker FROM Product WHERE type = 'PC' AND maker NOT IN (SELECT maker FROM Product WHERE type = 'Laptop') GROUP BY maker



Задание: 9 (Serge I: 2002-11-02)
Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker

Решение:SELECT maker FROM PC 
INNER JOIN (SELECT * FROM Product WHERE type = 'PC')
THIS_Table ON PC.model= THIS_Table.model WHERE speed >= 450 GROUP BY maker

Задание: 10 (Serge I: 2002-09-23)
Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price

SELECT model, price FROM Printer  WHERE Printer.price = (SELECT MAX(price) 
 FROM Printer)


Задание 11: Найдите среднюю скорость ПК.


Решение:SELECT AVG(speed) FROM PC


Задание: 12 
Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.

SELECT AVG(speed) FROM Laptop WHERE price >1000


Задание 13:
Найдите среднюю скорость ПК, выпущенных производителем A.


Решение:
SELECT AVG(speed) FROM PC 
WHERE model IN(SELECT model
 FROM Product
 WHERE maker = 'A')
 
 
 Задание 14:
 
Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.
 
Решение: 
SELECT Ships.class, Ships.name, country FROM Ships
INNER JOIN (SELECT * FROM  Classes WHERE numGuns >= 10)
THIS_Table ON Ships.class=THIS_Table.class


Задание:15
Найдите размеры жестких дисков, совпадающих
у двух и более PC. Вывести: HD
 
Решение:
SELECT hd FROM PC
GROUP BY HD
HAVING COUNT(*) >= 2



