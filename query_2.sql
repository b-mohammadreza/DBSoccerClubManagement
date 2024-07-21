select league.league_name, player.name as player_name, player_status.goals_scored
from league, player, player_status
where player_status.player_id = player.player_id and player_status.league_id = league.league_id and
	player_status.goals_scored in (select goals_scored from player_status LIMIT 3)
group by league.league_name 

;select league.league_id, player.player_id, league.league_name, player_status.goals_scored, player.name as player_name
from league, player_status, player
where player_status.player_id = player.player_id and player_status.league_id = league.league_id and league.league_name = "League Character"

#select * from player_status where player.player_id = 
;
select * from league where league.league_id = 299 or league.league_id = 448

;


