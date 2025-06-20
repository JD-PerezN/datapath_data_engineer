-- ====================================
-- CREACIÓN STORED PROCEDURE SP_COUNT_MEMBERS_PROJECTS
-- ====================================

DELIMITER //

CREATE PROCEDURE sp_count_members_project (
    IN p_project VARCHAR(20)
)
BEGIN
	SELECT p.project_name AS proyecto,
    t.team_name AS equipo,
    COUNT(t.team_name) AS miembros
	FROM project p
	JOIN team t ON  t.project_id = p.project_id
	JOIN team_member tm ON tm.team_id = t.team_id
	JOIN user u ON u.user_id = tm.user_id
	WHERE p.project_name LIKE CONCAT('%', p_project, '%')
	GROUP BY p.project_name, t.team_name;
END //

DELIMITER ;

CALL sp_count_members_project('App')