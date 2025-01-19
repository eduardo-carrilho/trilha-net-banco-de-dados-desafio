SELECT Nome, Ano FROM Filmes;

SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC

SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

SELECT Filmes.Nome, Generos.Genero FROM FilmesGenero INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

SELECT Filmes.Nome, Generos.Genero FROM FilmesGenero INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero WHERE Generos.Genero = 'Mistério'

SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM ElencoFilme INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id