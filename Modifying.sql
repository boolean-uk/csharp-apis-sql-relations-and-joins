-- first I had dateofbirth as an integer, but this was not so good. So I had to change the Star table so the column dateofbirth
-- could be of type DATE instead.


ALTER TABLE Star DROP COLUMN DateOfBirth;

ALTER TABLE Star ADD DateOfBirth DATE;
