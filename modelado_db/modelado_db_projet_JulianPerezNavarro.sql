-- ====================================
-- DATABASE projet_platform_db
-- ====================================
CREATE DATABASE projet_platform_db;
USE projet_platform_db;

-- ====================================
-- TABLA PROJECT
-- ====================================
-- CREACION TABLA PROJECT
 CREATE TABLE project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50) NOT NULL,
    description VARCHAR(100),
    start_date DATE,
    end_date DATE
);

-- INSERCIÓN TABLA PROJECT
INSERT INTO project (project_id, project_name, description, start_date, end_date) VALUES
(1, 'Desarrollo de App Móvil', 'Creación de una app de e-commerce para iOS y Android.', '2024-01-15', '2024-09-30'),
(2, 'Migración a la Nube', 'Mover toda la infraestructura on-premise a AWS.', '2024-02-01', '2024-12-20'),
(3, 'Sistema de CRM', 'Implementación de un nuevo sistema de gestión de clientes.', '2024-03-10', '2025-01-15'),
(4, 'Rediseño Web Corporativo', 'Actualización completa del sitio web de la empresa.', '2024-04-05', '2024-08-25'),
(5, 'Análisis de Big Data', 'Proyecto de inteligencia de negocio para analizar tendencias.', '2024-05-20', '2024-11-10'),
(6, 'Plataforma IoT', 'Desarrollo de una plataforma para gestionar dispositivos IoT.', '2024-06-01', '2025-03-01'),
(7, 'Automatización de Marketing', 'Implementar herramientas para automatizar campañas de email.', '2024-07-15', '2024-10-15'),
(8, 'Sistema de Facturación', 'Crear un nuevo módulo de facturación en el ERP.', '2024-08-01', '2025-02-28'),
(9, 'Desarrollo de Videojuego', 'Creación de un juego de estrategia para PC.', '2024-09-01', '2026-09-01'),
(10, 'Programa de Capacitación', 'Desarrollo de un portal e-learning para empleados.', '2024-10-10', '2025-04-10');

-- ====================================
-- TABLA USER
-- ====================================
-- CREACION TABLA USER
CREATE TABLE user (
    user_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    join_date DATE
);

-- INSERCIÓN TABLA USER
INSERT INTO user (user_id, full_name, email, join_date) VALUES
(1, 'Ana García', 'ana.garcia@example.com', '2022-03-12'),
(2, 'Luis Martínez', 'luis.martinez@example.com', '2021-11-05'),
(3, 'Sofía Rodríguez', 'sofia.r@example.com', '2023-01-20'),
(4, 'Carlos López', 'carlos.lopez@example.com', '2020-07-30'),
(5, 'María Hernández', 'maria.h@example.com', '2022-05-18'),
(6, 'Javier Pérez', 'javier.perez@example.com', '2023-08-01'),
(7, 'Laura Gómez', 'laura.gomez@example.com', '2021-02-25'),
(8, 'David Sánchez', 'david.sanchez@example.com', '2023-11-11'),
(9, 'Elena Torres', 'elena.torres@example.com', '2020-09-15'),
(10, 'Miguel Romero', 'miguel.romero@example.com', '2024-01-09');

-- ====================================
-- TABLA TEAM
-- ====================================
-- CREACION TABLA TEAM
CREATE TABLE team (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(50) NOT NULL,
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES project(project_id)
);

-- INSERCIÓN TABLA TEAM
INSERT INTO team (team_id, team_name, project_id) VALUES
(1, 'Equipo Frontend', 1),
(2, 'Equipo Backend', 1),
(3, 'Equipo de Infraestructura', 2),
(4, 'Ingenieros de Datos', 3),
(5, 'Diseñadores UI/UX', 4),
(6, 'Científicos de Datos', 5),
(7, 'Ingenieros IA', 6),
(8, 'Equipo de Marketing Digital', 7),
(9, 'Equipo de Finanzas', 8),
(10, 'Artistas 3D', 9);

-- ====================================
-- TABLA TEAM_MEMBER
-- ====================================
-- CREACION TABLA TEAM_MEMBER
CREATE TABLE team_member (
    team_member_id INT PRIMARY KEY,
    team_id INT,
    user_id INT,
    assignment_date DATE,
    FOREIGN KEY (team_id) REFERENCES team(team_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);

-- INSERCIÓN TABLA TEAM_MEMBER
INSERT INTO team_member (team_member_id, team_id, user_id, assignment_date) VALUES
(1, 1, 3, '2024-01-20'),
(2, 2, 2, '2024-01-20'),
(3, 3, 4, '2024-02-05'),
(4, 3, 8, '2024-02-10'),
(5, 5, 1, '2024-04-10'),
(6, 6, 5, '2024-05-25'),
(7, 7, 6, '2024-06-05'),
(8, 9, 7, '2024-08-15'),
(9, 10, 9, '2024-09-10'),
(10, 10, 10, '2024-09-10');