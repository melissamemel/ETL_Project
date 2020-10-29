CREATE VIEW happiness AS	
select 
	wcup.country,
	wcup.wins,
	hap.life_ladder,
	drk.total_litres_of_pure_alcohol	
FROM
    worldcup_data as wcup
JOIN happiness_data as hap
ON (wcup.country = hap.country)
JOIN drinks_data as drk
on (drk.country = wcup.country)


