-- Create tables for cleaned data to be loaded into
CREATE TABLE happiness (
country TEXT PRIMARY KEY,
year INT,
life_ladder FLOAT,
log_gdp_per_capita FLOAT,
social_support FLOAT,
healthy_life_expectancy_at_birth FLOAT,
freedom_to_make_life_choices FLOAT,
generosity FLOAT,
perceptions_of_corruption FLOAT
);

CREATE TABLE worldcup (
country TEXT PRIMARY KEY,
year INT,
wins FLOAT,
losses FLOAT, 
ties FLOAT
); 

CREATE TABLE drinks (
country TEXT PRIMARY KEY,
total_litres_of_pure_alcohol FLOAT,
year INT
); 

select *
from worldcup;
