# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create a first user
User.create(username: 'Daniel', password: 'foobar')

# Create some users with messages
(1..5).each do |n|
  User.create(username: "ExampleUser#{n}", password: 'foobar')
end

# Create some messages
(1..4).each do |n|
  Message.create(body: 'Hello there', user_id: n)
end
