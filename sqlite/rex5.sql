DELETE FROM pet WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = "john"
);


select * from pet;
select * from person;
select * from person_pet;

delete from person_pet where pet_id not in (
   select id from pet
);

select * from person_pet;
