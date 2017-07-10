# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
game = Game.create(title: 'Star Wars', game_id: 'l1203k1238')
game2 = Game.create(title: 'Mirrose Edge', game_id: 'k36456')
game3 = Game.create(title: 'World of Warcraft', game_id: '634n4935k1238')
game4 = Game.create(title: 'TheSecret World Legends', game_id: '63561gjrt203k1238')
user = User.create(name: 'UserName', steam_id: '#2399sdf9')
GameData.create(hours: 12.5, game: game, user: user)
GameData.create(hours: 77.3, game: game2, user: user)
GameData.create(hours: 1034.9, game: game3, user: user)
GameData.create(hours: 5.7, game: game4, user: user)
