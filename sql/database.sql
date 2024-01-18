
-- Criação de tabelas e definição de chaves estrangeiras
-- Substitua os tipos de dados e restrições conforme necessário

-- Tabela authors
CREATE TABLE authors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    bio TEXT
);

-- Tabela contact_infos
CREATE TABLE contact_infos (
    id SERIAL PRIMARY KEY,
    phone VARCHAR(20),
    email VARCHAR(255),
    authorId INTEGER,
    FOREIGN KEY (authorId) REFERENCES authors(id) ON DELETE CASCADE
);

-- Tabela categories
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    createdAt TIMESTAMP NOT NULL,
    updatedAt TIMESTAMP NOT NULL
);

-- Tabela books
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    pages INTEGER NOT NULL,
    createdAt TIMESTAMP NOT NULL,
    updatedAt TIMESTAMP NOT NULL,
    authorId INTEGER,
    FOREIGN KEY (authorId) REFERENCES authors(id) ON DELETE SET NULL
);

-- Tabela books_categories
CREATE TABLE books_categories (
    bookId INTEGER,
    categoryId INTEGER,
    FOREIGN KEY (bookId) REFERENCES books(id) ON DELETE CASCADE,
    FOREIGN KEY (categoryId) REFERENCES categories(id) ON DELETE CASCADE,
    PRIMARY KEY (bookId, categoryId)
);
