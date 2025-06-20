-- ====================================
-- FUNCTION fn_count_team_members
-- ====================================
DELIMITER //

CREATE FUNCTION fn_count_team_members(
	p_team_id INT
)

RETURNS INT

READS SQL DATA

BEGIN
	DECLARE v_member_count INT;

    SELECT COUNT(*)
    INTO v_member_count
    FROM team_member
    WHERE team_id = p_team_id;
    
    RETURN v_member_count;
END //

DELIMITER ;

SELECT
    t.team_name AS equipo,
    p.project_name AS proyecto,
    fn_count_team_members(team_id) AS numero_miembros
FROM team t
JOIN project p ON p.project_id = t.project_id;