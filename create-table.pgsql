create database conservation_db;

create table rangers (
    ranger_id serial primary key,
    name varchar(100) not null,
    region varchar(100) not null
);

create table species (
    species_id serial primary key,
    common_name varchar(100) not null,
    scientific_name varchar(100) not null,
    discovery_date date not null,
    conservation_status varchar(50) not null
);

create table sightings (
    sighting_id serial primary key,
    ranger_id int references rangers(ranger_id),
    species_id int references species(species_id),
    sighting_time TIMESTAMP not null,
    location varchar(255) not null,
    notes text
);

