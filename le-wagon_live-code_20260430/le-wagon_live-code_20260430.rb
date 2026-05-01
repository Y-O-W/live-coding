# Active Record - Basic
# 
# CRUD - SQL
# Create

DB = SQLite3::Database.new(database)
DB.execute("INSERT INTO")

# Create - Active Record
restaurant = Restaurant.new(name: "restaurant_name")
restaurant.save

# Read - All

results = DB.execute("SELECT")
Restaurant.new(results[0][0])

Restaurant.all


# Read - Find
#
results = DB.execute("SELECT * FROM WHERE id = ?;", id)

Restaurant.find(id)

# Update

DB.execute("UPDATE * FROM WHERE id = ? SET VALUES(?);", id, value)

restaurant.update(name: "test")

# Delete

DB.execute("DELETE * FROM WHERE id = ? OR id = ?;", id1, id2)

restaurant.destroy