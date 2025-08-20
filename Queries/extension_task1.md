## People Table Refactor

The `people` table now stores generic information for all individuals involved in films, including **stars**, **directors**, and **writers**.  

### People Table Structure
| Column | Description |
|--------|-------------|
| Id (PK) | Primary key |
| name    | Person's name |
| DOB     | Date of birth (can be NULL) |
| email   | Email address (can be NULL) |
| country | Country (can be NULL) |

> **Note:** Many fields such as `DOB`, `email`, and `country` may be `NULL` since this information is not available for every person.  

### Before and After Refactor
```sql
SELECT f.title, d.director_name
FROM film AS f
LEFT JOIN director AS d
ON f.director_id = d.director_id;

SELECT f.title, p.name
FROM film AS f 
LEFT JOIN people AS p 
ON f.director_id = p.id;