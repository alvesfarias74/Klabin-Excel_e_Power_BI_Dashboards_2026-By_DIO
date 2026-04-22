-- =============================================
-- STAR SCHEMA PARA ANÁLISE DE PROFESSORES
-- Foco: Professor, cursos ministrados, departamento
-- =============================================

-- 0. BANCO DE DADOS
CREATE DATABASE universidade;
USE universidade;
DESC table dimcurso;

-- 1. DIMENSÃO PROFESSOR
CREATE TABLE DimProfessor (
    id_professor INT PRIMARY KEY,
    nome_professor VARCHAR(100) NOT NULL,
    titulacao VARCHAR(50),
    data_contratacao DATE,
    regime_trabalho VARCHAR(20), -- 'Integral', 'Parcial', etc.
    email VARCHAR(100)
);

-- 2. DIMENSÃO DEPARTAMENTO
CREATE TABLE DimDepartamento (
    id_departamento INT PRIMARY KEY,
    nome_departamento VARCHAR(80) NOT NULL,
    centro VARCHAR(80),
    telefone VARCHAR(20)
);

-- 3. DIMENSÃO CURSO
CREATE TABLE DimCurso (
    id_curso INT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    nivel VARCHAR(30), -- 'Graduação', 'Pós-graduação', 'Técnico'
    duracao_semestres INT
);

-- 4. DIMENSÃO DISCIPLINA
CREATE TABLE DimDisciplina (
    id_disciplina INT PRIMARY KEY,
    nome_disciplina VARCHAR(100) NOT NULL,
    carga_horaria_total INT, -- em horas
    ementa TEXT
);

-- 5. DIMENSÃO DATA (granularidade dia)
CREATE TABLE DimData (
    id_data_oferta INT PRIMARY KEY,
    data_completa DATE NOT NULL,
    ano INT NOT NULL,
    semestre INT CHECK (semestre IN (1, 2)),
    trimestre INT CHECK (trimestre BETWEEN 1 AND 4),
    mes INT CHECK (mes BETWEEN 1 AND 12),
    nome_mes VARCHAR(20),
    dia_semana VARCHAR(15),
    ano_semestre VARCHAR(10) -- Ex: '2024.1'
);

-- 6. TABELA FATO
CREATE TABLE FatoProfessorCurso (
    id_fato INT PRIMARY KEY AUTO_INCREMENT, -- ou SERIAL dependendo do SGBD
    id_professor INT NOT NULL,
    id_departamento INT NOT NULL,
    id_curso INT NOT NULL,
    id_disciplina INT NOT NULL,
    id_data_oferta INT NOT NULL,
    
    -- Métricas
    carga_horaria_ministrada INT NOT NULL,
    qtde_alunos_matriculados INT,
    qtde_turmas INT DEFAULT 1,
    
    -- Chaves estrangeiras
    FOREIGN KEY (id_professor) REFERENCES DimProfessor(id_professor),
    FOREIGN KEY (id_departamento) REFERENCES DimDepartamento(id_departamento),
    FOREIGN KEY (id_curso) REFERENCES DimCurso(id_curso),
    FOREIGN KEY (id_disciplina) REFERENCES DimDisciplina(id_disciplina),
    FOREIGN KEY (id_data_oferta) REFERENCES DimData(id_data_oferta)
);

-- Índices para performance analítica
CREATE INDEX idx_fato_professor ON FatoProfessorCurso(id_professor);
CREATE INDEX idx_fato_data ON FatoProfessorCurso(id_data_oferta);
CREATE INDEX idx_fato_departamento ON FatoProfessorCurso(id_departamento);