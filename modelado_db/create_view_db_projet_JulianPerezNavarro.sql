-- ====================================
-- CREACIÓN VISTA INTEGRANTE_EQUIPO_PROYECTO
-- ====================================

CREATE VIEW integrante_equipo_projecto AS
SELECT p.project_name AS nombre_proyecto,
t.team_name AS nombre_equipo,
u.full_name AS integrante
FROM project p
JOIN team t ON  t.project_id = p.project_id
JOIN team_member tm ON tm.team_id = t.team_id
JOIN user u ON u.user_id = tm.user_id;

SELECT *
FROM integrante_equipo_projecto