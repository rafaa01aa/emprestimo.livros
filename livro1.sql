SELECT * FROM public.livro
ORDER BY id_livro ASC;

SELECT l.titulo, l.autor, c.nome AS categoria
FROM Livro l
JOIN Categoria c ON l.categoria_id = c.id_categoria;
