# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  ['admin@gmail.com', '123123', 'admin'],
  ['user1@gmail.com', '123123', 'player'],
  ['user2@gmail.com', '123123', 'player']
]

users.each do |email, password, role|
  User.create(email: email, password: password, role: role)
end
