# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

default_user = User.create({ username: 'test_user', email: 'test@test.com', password: 'test' })
default_user.save

default_user_2 = User.create({ username: 'test_user_2', email: 'test2@test.com', password: 'test' })
default_user_2.save