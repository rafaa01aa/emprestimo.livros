
CREATE TABLE public.usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);


CREATE TABLE public.livros (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    autor VARCHAR(100),
    ano_publicacao INT
);


CREATE TABLE public.emprestimo (
    id_emprestimo SERIAL PRIMARY KEY,
    id_livro INT NOT NULL,
    id_usuario INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    data_devolvido DATE,
    status VARCHAR(20) DEFAULT 'emprestado',

    FOREIGN KEY (id_livro) REFERENCES public.livros(id),
    FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id)
)