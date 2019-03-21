UPDATE characters
SET characters.species = "Martian"
WHERE characters.id = MAX(characters.id)
ORDER BY characters.id DESC
LIMIT 1;
-- ORDER BY SELECT MAX(field3) FROM table1
-- UPDATE characters
-- SET characters.species = "Martian";
-- WHERE
-- SELECT * FROM characters ORDER BY characters.id DESC LIMIT 1
-- SET characters.species = "Martian";
-- (SELECT MAX(characters.id) FROM characters)
