select club.club_name, team.team_name, player.name, player_status.goals_scored
from club, team, player, team_player, player_status
where player.player_id = player_status.player_id
    and player.player_id = team_player.player_id
    and team_player.club_id = team.club_id
    and team_player.team_id = team.team_id
    and club.club_id = team.club_id
    and player_status.goals_scored > 10
group by club.club_name, team.team_name, player.name
order by club.club_name


