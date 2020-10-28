-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "happiness_data" (
    "country" varchar(40)   NOT NULL,
    "year" int   NOT NULL,
    "life_ladder" float   NULL,
    "log_gdp_per_capita" float   NULL,
    "social_support" float   NULL,
    "healthy_life_expectancy_at_birth" float   NULL,
    "freedom_to_make_life_choices" float   NULL,
    "generosity" float   NULL,
    "perceptions_of_corruption" float   NULL,
    CONSTRAINT "pk_happiness_data" PRIMARY KEY (
        "country"
     )
);

CREATE TABLE "worldcup_data" (
    "country" varchar(40)   NOT NULL,
    "year" int   NOT NULL,
    "wins" float   NOT NULL,
    "losses" float   NOT NULL,
    "ties" float   NOT NULL,
    CONSTRAINT "pk_worldcup_data" PRIMARY KEY (
        "country"
     )
);

CREATE TABLE "drinks_data" (
    "country" varchar(40)   NOT NULL,
    "total_litres_of_pure_alcohol" float   NOT NULL,
    "year" int   NOT NULL,
    CONSTRAINT "pk_drinks_data" PRIMARY KEY (
        "country"
     )
);

ALTER TABLE "worldcup_data" ADD CONSTRAINT "fk_worldcup_data_country" FOREIGN KEY("country")
REFERENCES "happiness_data" ("country");

ALTER TABLE "drinks_data" ADD CONSTRAINT "fk_drinks_data_country" FOREIGN KEY("country")
REFERENCES "happiness_data" ("country");

