-- example of deletion of the rows with IDs 8 and 9
-- NOTE: the 'WHERE' statement is a must here since if there  would be
-- no WHERE then we would delete whole rows from the table!!!
DELETE FROM product
WHERE id < 10 AND id > 7;

