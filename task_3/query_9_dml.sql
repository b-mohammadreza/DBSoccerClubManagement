select 
	referee.name as referee_name
	,league.league_name
	,tmatch.date_match
	,tmatch.time_match
	,tmatch.week_day
    ,match_team_names.t_name_1 as team_1
    ,match_team_names.t_name_2 as team_2
	,stadium.stadium_name
from league, tmatch, stadium, referee,

	(select match_team_ids.league_id
			, match_team_ids.match_id
			, teams.t_name_1
			, teams.t_name_2
	from 
		(select team.team_id as t_id_1
			, t.team_id as t_id_2
			, team.team_name as t_name_1
			, t.team_name as t_name_2
		from team, team as t
		where team.team_id < t.team_id) as teams,

		(select team_tmatch.league_id as league_id
			, team_tmatch.tmatch_id as match_id
			, team_tmatch.team_id as team_id_1
			, tt.team_id as team_id_2
		from team_tmatch inner join team_tmatch as tt
		using (league_id, tmatch_id)
		where team_tmatch.team_id < tt.team_id) as match_team_ids

	where teams.t_id_1 = match_team_ids.team_id_1 and teams.t_id_2 = match_team_ids.team_id_2) as match_team_names

where 
		tmatch.league_id = match_team_names.league_id
    and tmatch.tmatch_id = match_team_names.match_id
    and league.league_id = tmatch.league_id
    and tmatch.stadium_id = stadium.stadium_id
    and tmatch.referee_id = referee.referee_id
order by referee_name


