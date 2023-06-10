select CName as Corporation, count(*) as Planes_Owned from OWNS
where CName is not null
group by CName
order by Planes_Owned desc
