update pet set name = "rahul's pet" where id in (
 select pet.id
 from person, pet, person_pet
 where pet.id = person_pet.pet_id and
   person_pet.person_id = person.id and
   person.first_name = "Rahul"

);

select * from pet;
