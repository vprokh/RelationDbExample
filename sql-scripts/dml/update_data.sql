UPDATE users
SET name='Updated name'
-- NOTE that the 'WHERE' statement is important here
-- since if it would absent than EACH row of the table would be updated
WHERE name = 'John';

-- pay attention that products which have the ID value we are about to update
-- will have updated value in the column category_id as well
-- this is done because of the 'ON UPDATE CASCADE' statement
UPDATE category
SET id = 101
WHERE id = 1;