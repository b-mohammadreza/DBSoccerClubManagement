select league.league_name, club.club_name, team.team_name, standing.points as total_points
from league, club, team, standing
where club.club_id = standing.club_id
	and team.club_id = standing.club_id
    and team.team_id = standing.team_id
    and league.league_id = standing.league_id
group by league.league_name, club.club_name, team.team_name
