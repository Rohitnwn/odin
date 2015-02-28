-- Add a dead column to person that's like the one in pet.
-- Add a phone_number column to person.
-- Add a salary column to person that is float.
-- Add a dob column to both person and pet that is a DATETIME.
-- Add a purchased_on column to person_pet of type DATETIME.
-- Add a parent to pet column that's an INTEGER and holds the id for this pet's parent.
-- Update the existing database records with the new column data using UPDATE statements.
-- Don't forget about the purchased_on column in person_pet relation table to indicate when that person bought the pet.
-- Add 4 more people and 5 more pets and assign their ownership and what pet's are parents.
-- On this last part remember that you get the id of the parent, then set it in the parent column.
-- Write a query that can find all the names of pets and their owners bought after 2004.
-- Key to this is to map the person_pet based on the purchased_on column to the pet and parent.
-- Write a query that can find the pets that are children of a given pet. Again look at the pet.
-- parent to do this. It's actually easy so don't over think it.


alter table person add column dead integer;
alter table person add column phone_number integer;
alter table person add column salary float;
alter table person add column DATETIME integer;
alter table pet add column DATETIME integer;
alter table pet add column parent integer;
alter table person_pet add column purchased_on;

.schema person
.schema pet
.schema person_pet

insert into person values (0, "Harry", "Potter", 22, 10, 9996633, 200000, 21012015);
                   values (1, "Hermonie", "Grenger", 22, 12, 9966331, 800000, 23012015);
                   values (3, "Ron", "Wielsey", 23, 9, 9966887, 7000652, 25012015)
                   values (4, "Albus percieus wulfric", "Dumbuldore", 91, 15, 8855226, 99999999, 26012015);

insert into pet    values (0, "Tampishach", "Macabre", 110, 110, 01011800, 23012015);
                   values (1, "Doby", "hobit", 90, 13, 02051400, 26012015);
                   values (0, "Tampishach", "Macabre", 110, 110, 01011800, 23012015);
                   values (4, "Tampishach", "Macabre", 110, 110, 01011800, 23012015);
                   values (5, "Tampishach", "Macabre", 110, 110, 01011800, 23012015);




