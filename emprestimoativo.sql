SELECT * FROM public.emprestimo
ORDER BY id_emprestimo ASC;

SELECT u.nome, l.titulo, e.data_emprestimo
FROM Emprestimo e
JOIN Usuario u ON e.usuario_id = u.id_usuario
JOIN Livro l ON e.livro_id = l.id_livro
WHERE e.data_devolucao IS NULL;
