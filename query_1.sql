select club.club_name, player.name as player_name, player.birth_date, player.nationality, player.shirt_num
from club, team, team_player, player
where team.club_id = team_player.club_id and player.player_id = team_player.player_id and team.team_id = team_player.team_id

