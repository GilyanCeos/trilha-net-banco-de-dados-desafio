--1

SELECT
	Nome,
	Ano 
FROM Filmes

--2

SELECT 
	Nome,
	Ano 
FROM Filmes
ORDER BY Ano ASC

--3

SELECT *
FROM Filmes
WHERE Nome = 'De volta para o futuro'

--4

SELECT *
FROM Filmes
WHERE Ano = '1997'

--5

SELECT *
FROM Filmes
WHERE Ano >= '2000'

--6

SELECT *
FROM Filmes
WHERE Duracao BETWEEN '101' --por algum motivo que não entendi o sinal <= não estava funcionando, então decidi usar a opçã BTWEEN
AND '149'
ORDER BY Duracao 

--7 

SELECT Ano, COUNT(*) AS quantidade
FROM Filmes
GROUP BY Ano
ORDER BY quantidade DESC

--8

SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

--9

SELECT
	PrimeiroNome,
	UltimoNome,
	Genero 
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome 

--10

SELECT
	Nome,
	Genero 
FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero 

--11

SELECT
	Nome,
	Genero 
FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero 
WHERE Genero = 'Mistério'

--12

SELECT
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM Filmes
INNER JOIN Atores ON Filmes.Id = Atores.Id
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme






