select club.club_name, team.team_name, player.name as player_name, player_status.goals_scored
from club, team, player, team_player, player_status
where player_status.player_id = player.player_id
    and team_player.player_id = player_status.player_id
    and team_player.club_id = team.club_id
    and team_player.team_id = team.team_id
    and club.club_id = team.club_id
    and (player.name, player_status.goals_scored) IN 
        (select player.name, player_ids_max_score._max_score
        from player,
        
            (select player_status.player_id as _id, team_ids_max_scores.max_score as _max_score
            from player_status, team_player,

                (select team_player.club_id as c_id
                    ,team_player.team_id as t_id
                    ,max(player_status.goals_scored) as max_score
                from player_status, team_player
                where player_status.player_id = team_player.player_id
                group by club_id, team_id
                order by club_id, team_id) as team_ids_max_scores
            
            where team_ids_max_scores.c_id = team_player.club_id
                and team_ids_max_scores.t_id = team_player.team_id
                and team_player.player_id = player_status.player_id
                and player_status.goals_scored = team_ids_max_scores.max_score) as player_ids_max_score

        where player.player_id = player_ids_max_score._id
        )
group by club.club_name, team.team_name
order by club.club_name, team.team_name
