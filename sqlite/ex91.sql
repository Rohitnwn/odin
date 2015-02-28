DELETE FROM pet WHERE id IN (
  SELECT pet.id
  FROM pet, person, person_pet
  WHERE
  pet.dead = 0
);

SELECT * FROM pet;


