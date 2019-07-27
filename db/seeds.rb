# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Message.delete_all
Game.delete_all
User.delete_all


Game.create([{name: "GAME 1", num_of_players: 5, status: "WAITING"}, {name: "GAME 2", num_of_players: 10, status: "IN_PROGRESS"}, {name: "GAME 3", num_of_players: 7, status: "FINISHED"} ])
User.create([{username: "AA", password: "123"},{username: "BB", password: "123"},{username: "CC", password: "123"},{username: "DD", password: "123"},{username: "EE", password: "123"}])