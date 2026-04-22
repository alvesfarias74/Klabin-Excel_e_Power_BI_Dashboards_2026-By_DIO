-- =============================================
-- INSERTS - STAR SCHEMA PARA ANÁLISE DE PROFESSORES
-- =============================================

-- -------------------------------------------------
-- 1. DIMENSÃO PROFESSOR
-- -------------------------------------------------
INSERT INTO DimProfessor (id_professor, nome_professor, titulacao, data_contratacao, regime_trabalho, email) VALUES
(1, 'Dr. Carlos Alberto Silva', 'Doutor', '2015-03-10', 'Integral', 'carlos.silva@universidade.edu'),
(2, 'Dra. Mariana Fernandes Souza', 'Doutora', '2018-07-22', 'Integral', 'mariana.souza@universidade.edu'),
(3, 'Me. Ricardo Oliveira Santos', 'Mestre', '2020-01-15', 'Parcial', 'ricardo.santos@universidade.edu'),
(4, 'Dra. Patrícia Costa Lima', 'Doutora', '2012-11-05', 'Integral', 'patricia.lima@universidade.edu'),
(5, 'Esp. João Pedro Almeida', 'Especialista', '2021-08-19', 'Parcial', 'joao.almeida@universidade.edu'),
(6, 'Dr. André Luiz Mendes', 'Doutor', '2016-09-30', 'Integral', 'andre.mendes@universidade.edu'),
(7, 'Dra. Camila Rodrigues Rocha', 'Doutora', '2019-04-12', 'Integral', 'camila.rocha@universidade.edu'),
(8, 'Me. Fernanda Castro Nunes', 'Mestre', '2022-02-28', 'Parcial', 'fernanda.nunes@universidade.edu');

-- -------------------------------------------------
-- 2. DIMENSÃO DEPARTAMENTO
-- -------------------------------------------------
INSERT INTO DimDepartamento (id_departamento, nome_departamento, centro, telefone) VALUES
(1, 'Departamento de Computação', 'Centro de Ciências Exatas', '(11) 3123-1001'),
(2, 'Departamento de Matemática', 'Centro de Ciências Exatas', '(11) 3123-1002'),
(3, 'Departamento de Administração', 'Centro de Ciências Sociais', '(11) 3123-2001'),
(4, 'Departamento de Engenharias', 'Centro de Tecnologia', '(11) 3123-3001'),
(5, 'Departamento de Letras', 'Centro de Humanidades', '(11) 3123-4001');

-- -------------------------------------------------
-- 3. DIMENSÃO CURSO
-- -------------------------------------------------
INSERT INTO DimCurso (id_curso, nome_curso, nivel, duracao_semestres) VALUES
(1, 'Ciência da Computação', 'Graduação', 8),
(2, 'Engenharia de Software', 'Graduação', 8),
(3, 'Sistemas de Informação', 'Graduação', 8),
(4, 'Matemática Aplicada', 'Graduação', 8),
(5, 'Administração de Empresas', 'Graduação', 8),
(6, 'Engenharia Civil', 'Graduação', 10),
(7, 'Letras - Português/Inglês', 'Graduação', 8),
(8, 'Ciência de Dados', 'Pós-graduação', 4),
(9, 'Inteligência Artificial', 'Pós-graduação', 4),
(10, 'MBA em Gestão de TI', 'Pós-graduação', 4);

-- -------------------------------------------------
-- 4. DIMENSÃO DISCIPLINA
-- -------------------------------------------------
INSERT INTO DimDisciplina (id_disciplina, nome_disciplina, carga_horaria_total, ementa) VALUES
(1, 'Banco de Dados', 80, 'Modelagem conceitual, lógica e física. SQL. Transações.'),
(2, 'Estrutura de Dados', 80, 'Listas, pilhas, filas, árvores, grafos e algoritmos de ordenação.'),
(3, 'Engenharia de Software', 60, 'Ciclo de vida, metodologias ágeis, UML, requisitos.'),
(4, 'Inteligência Artificial', 80, 'Busca, agentes, aprendizado de máquina, redes neurais.'),
(5, 'Cálculo I', 80, 'Limites, derivadas, integrais e aplicações.'),
(6, 'Cálculo II', 80, 'Integrais múltiplas, EDOs, séries.'),
(7, 'Álgebra Linear', 60, 'Vetores, matrizes, espaços vetoriais, transformações lineares.'),
(8, 'Gestão de Projetos', 60, 'PMBOK, Scrum, Kanban, ferramentas de gestão.'),
(9, 'Marketing Digital', 60, 'Estratégias digitais, SEO, métricas, tráfego pago.'),
(10, 'Resistência dos Materiais', 80, 'Tensões, deformações, flexão, torção, flambagem.'),
(11, 'Literatura Brasileira', 60, 'Do Barroco ao Modernismo, principais autores e obras.'),
(12, 'Linguística Aplicada', 60, 'Aquisição de linguagem, ensino de línguas, fonética.'),
(13, 'Data Mining', 80, 'Pré-processamento, regras de associação, clusterização.'),
(14, 'Deep Learning', 80, 'Redes neurais profundas, CNN, RNN, transformers.'),
(15, 'Governança de TI', 60, 'COBIT, ITIL, LGPD, auditoria de TI.');

-- -------------------------------------------------
-- 5. DIMENSÃO DATA (2024 e 2025)
-- -------------------------------------------------
-- Gerando datas para os semestres de 2024 e 2025
INSERT INTO DimData (id_data_oferta, data_completa, ano, semestre, trimestre, mes, nome_mes, dia_semana, ano_semestre) VALUES

-- 2024 - 1º SEMESTRE (Fev a Jun)
(1, '2024-02-15', 2024, 1, 1, 2, 'Fevereiro', 'Quinta', '2024.1'),
(2, '2024-03-01', 2024, 1, 1, 3, 'Março', 'Sexta', '2024.1'),
(3, '2024-04-10', 2024, 1, 2, 4, 'Abril', 'Quarta', '2024.1'),
(4, '2024-05-20', 2024, 1, 2, 5, 'Maio', 'Segunda', '2024.1'),
(5, '2024-06-05', 2024, 1, 2, 6, 'Junho', 'Quarta', '2024.1'),

-- 2024 - 2º SEMESTRE (Ago a Dez)
(6, '2024-08-10', 2024, 2, 3, 8, 'Agosto', 'Sábado', '2024.2'),
(7, '2024-09-15', 2024, 2, 3, 9, 'Setembro', 'Domingo', '2024.2'),
(8, '2024-10-01', 2024, 2, 4, 10, 'Outubro', 'Terça', '2024.2'),
(9, '2024-11-12', 2024, 2, 4, 11, 'Novembro', 'Terça', '2024.2'),
(10, '2024-12-05', 2024, 2, 4, 12, 'Dezembro', 'Quinta', '2024.2'),

-- 2025 - 1º SEMESTRE
(11, '2025-02-18', 2025, 1, 1, 2, 'Fevereiro', 'Terça', '2025.1'),
(12, '2025-03-10', 2025, 1, 1, 3, 'Março', 'Segunda', '2025.1'),
(13, '2025-04-22', 2025, 1, 2, 4, 'Abril', 'Terça', '2025.1'),
(14, '2025-05-15', 2025, 1, 2, 5, 'Maio', 'Quinta', '2025.1'),
(15, '2025-06-30', 2025, 1, 2, 6, 'Junho', 'Segunda', '2025.1'),

-- 2025 - 2º SEMESTRE
(16, '2025-08-05', 2025, 2, 3, 8, 'Agosto', 'Terça', '2025.2'),
(17, '2025-09-25', 2025, 2, 3, 9, 'Setembro', 'Quinta', '2025.2'),
(18, '2025-10-18', 2025, 2, 4, 10, 'Outubro', 'Sábado', '2025.2'),
(19, '2025-11-08', 2025, 2, 4, 11, 'Novembro', 'Sábado', '2025.2'),
(20, '2025-12-15', 2025, 2, 4, 12, 'Dezembro', 'Segunda', '2025.2');

-- -------------------------------------------------
-- 6. TABELA FATO (ocorrências de professores ministrando disciplinas)
-- -------------------------------------------------
INSERT INTO FatoProfessorCurso (id_professor, id_departamento, id_curso, id_disciplina, id_data_oferta, carga_horaria_ministrada, qtde_alunos_matriculados, qtde_turmas) VALUES

-- PROFESSOR 1 (Carlos - Computação) - 2024.1
(1, 1, 1, 1, 1, 80, 45, 1), -- Banco de Dados - CC
(1, 1, 2, 1, 2, 80, 38, 1), -- Banco de Dados - ES
(1, 1, 3, 1, 3, 80, 42, 1), -- Banco de Dados - SI

-- PROFESSOR 1 (Carlos) - 2024.2
(1, 1, 1, 13, 6, 80, 35, 1), -- Data Mining - CC
(1, 1, 8, 13, 7, 80, 28, 1), -- Data Mining - CD (pós)

-- PROFESSOR 2 (Mariana - Computação) - 2024.1
(2, 1, 1, 2, 1, 80, 50, 2), -- Estrutura de Dados - CC (2 turmas)
(2, 1, 2, 2, 2, 80, 44, 1), -- Estrutura de Dados - ES
(2, 1, 1, 4, 3, 80, 40, 1), -- IA - CC

-- PROFESSOR 2 (Mariana) - 2025.1
(2, 1, 9, 14, 11, 80, 32, 1), -- Deep Learning - IA (pós)
(2, 1, 1, 4, 12, 80, 48, 1), -- IA - CC

-- PROFESSOR 3 (Ricardo - Matemática) - 2024.1
(3, 2, 4, 5, 2, 80, 52, 2), -- Cálculo I - MAT (2 turmas)
(3, 2, 1, 5, 3, 80, 48, 1), -- Cálculo I - CC
(3, 2, 4, 6, 4, 80, 38, 1), -- Cálculo II - MAT

-- PROFESSOR 4 (Patrícia - Computação) - 2024.2
(4, 1, 1, 3, 8, 60, 52, 1), -- Eng. Software - CC
(4, 1, 2, 3, 9, 60, 46, 1), -- Eng. Software - ES
(4, 1, 3, 15, 10, 60, 41, 1), -- Governança de TI - SI

-- PROFESSOR 4 (Patrícia) - 2025.2
(4, 1, 10, 15, 16, 60, 36, 1), -- Governança de TI - MBA
(4, 1, 2, 3, 17, 60, 44, 1), -- Eng. Software - ES

-- PROFESSOR 5 (João - Administração) - 2024.2
(5, 3, 5, 8, 7, 60, 62, 2), -- Gestão de Projetos - ADM (2 turmas)
(5, 3, 5, 9, 9, 60, 55, 1), -- Marketing Digital - ADM

-- PROFESSOR 5 (João) - 2025.1
(5, 3, 10, 8, 13, 60, 48, 1), -- Gestão de Projetos - MBA

-- PROFESSOR 6 (André - Engenharias) - 2024.2
(6, 4, 6, 10, 6, 80, 40, 1), -- Resistência dos Materiais - EC

-- PROFESSOR 6 (André) - 2025.1
(6, 4, 6, 10, 14, 80, 45, 1), -- Resistência dos Materiais - EC
(6, 4, 6, 7, 15, 60, 42, 1), -- Álgebra Linear - EC

-- PROFESSOR 7 (Camila - Letras) - 2024.1
(7, 5, 7, 11, 4, 60, 35, 1), -- Literatura Brasileira - LET
(7, 5, 7, 12, 5, 60, 32, 1), -- Linguística Aplicada - LET

-- PROFESSOR 7 (Camila) - 2025.1
(7, 5, 7, 11, 14, 60, 38, 1), -- Literatura Brasileira - LET
(7, 5, 7, 12, 15, 60, 36, 1), -- Linguística Aplicada - LET

-- PROFESSOR 8 (Fernanda - Matemática) - 2025.1
(8, 2, 4, 7, 12, 60, 44, 1), -- Álgebra Linear - MAT
(8, 2, 1, 7, 13, 60, 50, 1); -- Álgebra Linear - CC

SELECT 
    p.nome_professor,
    p.titulacao,
    SUM(f.carga_horaria_ministrada * f.qtde_turmas) AS total_horas_ministradas,
    COUNT(DISTINCT f.id_disciplina) AS qtd_disciplinas,
    SUM(f.qtde_turmas) AS total_turmas
FROM FatoProfessorCurso f
JOIN DimProfessor p ON f.id_professor = p.id_professor
JOIN DimData d ON f.id_data_oferta = d.id_data_oferta
WHERE d.ano = 2025
GROUP BY p.nome_professor, p.titulacao
ORDER BY total_horas_ministradas DESC;

-- 2. QUERIES ANALÍTICAS (Foco no Professor)
-- Query 1: Carga horária total ministrada por professor em 2025
SELECT 
    p.nome_professor,
    p.titulacao,
    SUM(f.carga_horaria_ministrada * f.qtde_turmas) AS total_horas_ministradas,
    COUNT(DISTINCT f.id_disciplina) AS qtd_disciplinas,
    SUM(f.qtde_turmas) AS total_turmas
FROM FatoProfessorCurso f
JOIN DimProfessor p ON f.id_professor = p.id_professor
JOIN DimData d ON f.id_data_oferta = d.id_data_oferta
WHERE d.ano = 2025
GROUP BY p.nome_professor, p.titulacao
ORDER BY total_horas_ministradas DESC;

-- Query 2: Professores com maior número de alunos atendidos
SELECT 
    p.nome_professor,
    d.nome_departamento,
    SUM(f.qtde_alunos_matriculados * f.qtde_turmas) AS total_alunos_atendidos,
    SUM(f.qtde_turmas) AS total_turmas
FROM FatoProfessorCurso f
JOIN DimProfessor p ON f.id_professor = p.id_professor
JOIN DimDepartamento d ON f.id_departamento = d.id_departamento
JOIN DimData dt ON f.id_data_oferta = dt.id_data_oferta
WHERE dt.ano = 2024
GROUP BY p.nome_professor, d.nome_departamento
ORDER BY total_alunos_atendidos DESC
LIMIT 5;

-- Query 3: Análise semestral por professor
SELECT 
    p.nome_professor,
    dt.ano_semestre,
    SUM(f.carga_horaria_ministrada * f.qtde_turmas) AS horas_ministradas,
    COUNT(DISTINCT f.id_disciplina) AS disciplinas_distintas,
    SUM(f.qtde_turmas) AS turmas
FROM FatoProfessorCurso f
JOIN DimProfessor p ON f.id_professor = p.id_professor
JOIN DimData dt ON f.id_data_oferta = dt.id_data_oferta
GROUP BY p.nome_professor, dt.ano_semestre
ORDER BY p.nome_professor, dt.ano_semestre;

-- Query 4: Professores mais versáteis (atuam em mais cursos)
SELECT 
    p.nome_professor,
    COUNT(DISTINCT f.id_curso) AS qtd_cursos_ministrados,
    GROUP_CONCAT(DISTINCT c.nome_curso SEPARATOR ', ') AS cursos,
    COUNT(DISTINCT f.id_disciplina) AS qtd_disciplinas
FROM FatoProfessorCurso f
JOIN DimProfessor p ON f.id_professor = p.id_professor
JOIN DimCurso c ON f.id_curso = c.id_curso
GROUP BY p.nome_professor
ORDER BY qtd_cursos_ministrados DESC;

-- Query 5: Média de alunos por turma por professor
SELECT 
    p.nome_professor,
    d.nome_departamento,
    ROUND(AVG(f.qtde_alunos_matriculados), 1) AS media_alunos_por_turma,
    SUM(f.qtde_alunos_matriculados) AS total_alunos,
    SUM(f.qtde_turmas) AS total_turmas
FROM FatoProfessorCurso f
JOIN DimProfessor p ON f.id_professor = p.id_professor
JOIN DimDepartamento d ON f.id_departamento = d.id_departamento
GROUP BY p.nome_professor, d.nome_departamento
ORDER BY media_alunos_por_turma DESC;

-- Query 6: Ranking de professores por departamento (horas totais)
SELECT 
    d.nome_departamento,
    p.nome_professor,
    SUM(f.carga_horaria_ministrada * f.qtde_turmas) AS total_horas,
    RANK() OVER (PARTITION BY d.nome_departamento ORDER BY SUM(f.carga_horaria_ministrada * f.qtde_turmas) DESC) AS ranking
FROM FatoProfessorCurso f
JOIN DimProfessor p ON f.id_professor = p.id_professor
JOIN DimDepartamento d ON f.id_departamento = d.id_departamento
GROUP BY d.nome_departamento, p.nome_professor
ORDER BY d.nome_departamento, ranking;

-- Query 7: Disciplinas mais ministradas (professores envolvidos)
SELECT 
    disc.nome_disciplina,
    COUNT(DISTINCT f.id_professor) AS qtd_professores,
    COUNT(*) AS total_ofertas,
    SUM(f.qtde_turmas) AS total_turmas,
    SUM(f.qtde_alunos_matriculados) AS total_alunos
FROM FatoProfessorCurso f
JOIN DimDisciplina disc ON f.id_disciplina = disc.id_disciplina
GROUP BY disc.nome_disciplina
ORDER BY total_ofertas DESC;

-- Query 8: Variação de carga horária do professor entre 2024 e 2025
SELECT 
    p.nome_professor,
    SUM(CASE WHEN dt.ano = 2024 THEN f.carga_horaria_ministrada * f.qtde_turmas ELSE 0 END) AS horas_2024,
    SUM(CASE WHEN dt.ano = 2025 THEN f.carga_horaria_ministrada * f.qtde_turmas ELSE 0 END) AS horas_2025,
    (SUM(CASE WHEN dt.ano = 2025 THEN f.carga_horaria_ministrada * f.qtde_turmas ELSE 0 END) - 
     SUM(CASE WHEN dt.ano = 2024 THEN f.carga_horaria_ministrada * f.qtde_turmas ELSE 0 END)) AS variacao_horas
FROM FatoProfessorCurso f
JOIN DimProfessor p ON f.id_professor = p.id_professor
JOIN DimData dt ON f.id_data_oferta = dt.id_data_oferta
GROUP BY p.nome_professor
ORDER BY variacao_horas DESC;

-- Query 9: Professores que ministram disciplinas em múltiplos departamentos
SELECT 
    p.nome_professor,
    COUNT(DISTINCT f.id_departamento) AS qtd_departamentos,
    GROUP_CONCAT(DISTINCT d.nome_departamento SEPARATOR ', ') AS departamentos
FROM FatoProfessorCurso f
JOIN DimProfessor p ON f.id_professor = p.id_professor
JOIN DimDepartamento d ON f.id_departamento = d.id_departamento
GROUP BY p.nome_professor
HAVING qtd_departamentos > 1;

-- Query 10: Relatório completo para um professor específico
SELECT 
    p.nome_professor,
    p.titulacao,
    d.nome_departamento,
    c.nome_curso,
    disc.nome_disciplina,
    dt.ano_semestre,
    f.carga_horaria_ministrada,
    f.qtde_turmas,
    f.qtde_alunos_matriculados,
    (f.carga_horaria_ministrada * f.qtde_turmas) AS horas_totais
FROM FatoProfessorCurso f
JOIN DimProfessor p ON f.id_professor = p.id_professor
JOIN DimDepartamento d ON f.id_departamento = d.id_departamento
JOIN DimCurso c ON f.id_curso = c.id_curso
JOIN DimDisciplina disc ON f.id_disciplina = disc.id_disciplina
JOIN DimData dt ON f.id_data_oferta = dt.id_data_oferta
WHERE p.nome_professor = 'Dra. Mariana Fernandes Souza'
ORDER BY dt.data_completa;

-- 3. VIEWS PARA ANÁLISE RÁPIDA
-- VIEW 1: Resumo anual por professor
CREATE VIEW vw_resumo_professor_anual AS
SELECT 
    p.id_professor,
    p.nome_professor,
    dt.ano,
    SUM(f.carga_horaria_ministrada * f.qtde_turmas) AS total_horas,
    SUM(f.qtde_turmas) AS total_turmas,
    SUM(f.qtde_alunos_matriculados) AS total_alunos,
    COUNT(DISTINCT f.id_disciplina) AS disciplinas_distintas
FROM FatoProfessorCurso f
JOIN DimProfessor p ON f.id_professor = p.id_professor
JOIN DimData dt ON f.id_data_oferta = dt.id_data_oferta
GROUP BY p.id_professor, p.nome_professor, dt.ano;

-- VIEW 2: Desempenho por departamento
CREATE VIEW vw_desempenho_departamento AS
SELECT 
    d.nome_departamento,
    dt.ano,
    dt.semestre,
    COUNT(DISTINCT f.id_professor) AS qtd_professores,
    SUM(f.qtde_turmas) AS total_turmas,
    SUM(f.qtde_alunos_matriculados) AS total_alunos,
    SUM(f.carga_horaria_ministrada * f.qtde_turmas) AS total_horas
FROM FatoProfessorCurso f
JOIN DimDepartamento d ON f.id_departamento = d.id_departamento
JOIN DimData dt ON f.id_data_oferta = dt.id_data_oferta
GROUP BY d.nome_departamento, dt.ano, dt.semestre;