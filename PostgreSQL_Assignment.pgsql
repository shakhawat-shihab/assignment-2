-- 1️⃣Register a new ranger with provided data with name = 'Derek Fox' and region = 'Coastal Plains'
insert into rangers (name, region) values ('Derek Fox', 'Coastal Plains');


-- 2️⃣ Count unique species ever sighted.
select count(distinct species_id) as unique_species_count from sightings;


-- 3️⃣ Find all sightings where the location includes "Pass".
select *from sightings
where location like '%Pass%';


-- 4️⃣ List each ranger's name and their total number of sightings.
select R.name, count(*) as total_sightings
from rangers as R
left join sightings as S
on R.ranger_id = S.ranger_id
group by R.ranger_id;


-- 5️⃣ List species that have never been sighted.
select common_name from species
where species_id not in (select distinct species_id from sightings); 


--6️⃣ Show the most recent 2 sightings.
select species.common_name, sightings.sighting_time, rangers.name 
from sightings 
inner join species
on sightings.species_id = species.species_id
inner join rangers
on sightings.ranger_id = rangers.ranger_id
order by sighting_time desc
limit 2;


-- 7️⃣ Update conservation status to 'Historic' for species discovered before 1800.
update species set conservation_status = 'Historic' 
where extract(year from discovery_date) < 1800;


-- 8️⃣ Label each sighting's time of day as 'Morning', 'Afternoon', or 'Evening'.
-- Morning: before 12 PM
-- Afternoon: 12 PM–5 PM
-- Evening: after 5 PM
select sighting_id, 
case 
    when extract(hour from sighting_time) < 12 then 'Morning'
    when extract(hour from sighting_time) between 12 and 16 then 'Afternoon'
    else 'Evening'
end as time_of_day
from sightings;


-- 9️⃣ Delete rangers who have never sighted any species
delete from rangers
where ranger_id not in (select distinct ranger_id from sightings);