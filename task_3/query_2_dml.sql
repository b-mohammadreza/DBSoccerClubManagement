DROP PROCEDURE IF EXISTS ROWPERROW;
DELIMITER ;;

CREATE PROCEDURE ROWPERROW()
BEGIN
DECLARE n INT DEFAULT 0;
DECLARE i INT DEFAULT 0;
DECLARE l_name VARCHAR(100) DEFAULT "";
DECLARE _id INT DEFAULT 0;
SELECT COUNT(*) FROM league INTO n;
SET i=0;
WHILE i<n DO 

  SELECT (league_id) FROM league LIMIT i,1 INTO _id;
  SELECT (league.league_name) FROM league LIMIT i,1 INTO l_name;
  SELECT l_name, player.name as player_name, player_status.goals_scored 
	FROM player, player_status
    WHERE player_status.player_id = player.player_id 
		and player_status.league_id = _id
	ORDER BY player_status.goals_scored DESC LIMIT 3;

  SET i = i + 1;
END WHILE;
End;
;;

DELIMITER ;

CALL ROWPERROW();


