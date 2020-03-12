-- 1 
SELECT DISTINCT(prime_genre) FROM data;

-- 2
SELECT (prime_genre), MAX(rating_count_tot) FROM data GROUP BY (rating_count_tot, prime_genre);

--3
CREATE TABLE test AS
SELECT * FROM test ORDER BY count DESC LIMIT 10;

--4
SELECT * FROM test ORDER BY count LIMIT 10;

--5
SELECT * FROM test ORDER BY count DESC LIMIT 10;

--6
SELECT DISTINCT(prime_genre),(user_rating),(rating_count_tot) FROM data ORDER BY (user_rating)  DESC;

--7
--Há discrepância na quantidade de avaliação de usuários de Games.

--8
-- Podemos dizer que seria necessário melhorar a ordem do rating_count_tot, pois através disso melhoraria a análise e 
--terá um resultado de imediato.

--9
-- É possível notar que em ambas as questões, os gêneros se repetem, fazendo com que não seja apenas uma de cada gênero.

-- 10
-- A classificação seria: Weather, Gamer e Social Networking. Pois há uma discrepância na quantidade dos votos.


-- 11
-- De acordo com a quantidade de avaliação dos aplicativos, há muitos aplicativos que foram avaliados e teriam que pagar mas 
--os aplicativos gratuitos são bem mais baixados do que os cobrados.
SELECT  (track_name), MAX(price), (rating_count_tot) FROM data GROUP BY (price, rating_count_tot, track_name);

-- Bonus
SELECT COUNT(track_name) FROM data WHERE "lang.num" > 1;

-- Bonus 2
SELECT COUNT(track_name) FROM data WHERE price =0;
SELECT COUNT(track_name) FROM data WHERE price != 0;


--Bonus3
SELECT COUNT(DISTINCT(prime_genre)) FROM data WHERE price = 0;
SELECT COUNT(DISTINCT(prime_genre)) FROM data WHERE price != 0