# Active Record - Advanced
# Validation & Association
# DB Quiz
# 
# Datebase - Realtional
# tables are linked --> data retrievel via foreign keys
# 
# Relation - 1:n, n:n, 1:1, 1 1
# 
# Schema - authors, books, users, readings
# 
# Books before 1985
# 
SELECT * FROM books WHERE publishing_year < 1985;

# most recent books

SELECT * FROM books JOIN authors ON books.author_id = author.id
WHERE author.name = "Jules Verne"
ORDER BY books.date DESC
LIMIT 3;

# Active Record

# conntect db tables to Ruby classes/objects --> Object Relational Mapping
# 
# Migration --> change in database structure
# 
# 
