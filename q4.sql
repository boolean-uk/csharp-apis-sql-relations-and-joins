-- Show only those films where the writer and the director are the same person
select title 
from films 
where directorId = writerId;

