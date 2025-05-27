SELECT * FROM public.emprestimo
ORDER BY id_emprestimo ASC;

INSERT INTO Emprestimo (id_emprestimo, livro_id, usuario_id, data_emprestimo, data_devolucao)
VALUES (4, 1, 6, '2025-05-20', NULL);

UPDATE Emprestimo
SET data_devolucao = '2025-05-20'
WHERE id_emprestimo = 1;


DELETE FROM Livro
WHERE id_livro = 2;