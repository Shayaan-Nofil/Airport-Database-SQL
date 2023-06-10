select hangar_num, count(*) as stored_planes from AIRPLANE
group by hangar_num
