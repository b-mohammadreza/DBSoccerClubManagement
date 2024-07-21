select stadium.stadium_name, tmatch.tmatch_id, tmatch.date_match
from stadium, tmatch
where stadium.stadium_id = tmatch.stadium_id
group by stadium.stadium_name, tmatch.tmatch_id
