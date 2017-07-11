# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
game = Game.create(title: 'STAR WARS Battlefront_II', game_id: '6060', game_description: 'Nice game!')
game2 = Game.create(title: 'Mirrors Edge', game_id: '17410', game_description: 'Nice game!')
game4 = Game.create(title: 'The Secret World Legends', game_id: '215280', game_description: 'Nice game!')
game5 = Game.create(title: 'Rocket League', game_id: '252950', game_description: 'Nice game!')
game6 = Game.create(title: 'Team Fortress 2', game_id: '440', game_description: 'Nice game!')
game7 = Game.create(title: 'Cities Skyline', game_id: '255710', game_description: 'Nice game!')
game8 = Game.create(title: 'Life is Strange', game_id: '319630', game_description: 'Nice game!')
user = User.create(name: 'Wolfried', steam_id: '76561198034249290')
GameStat.create(hours: 12.5, game: game, user: user)
GameStat.create(hours: 77.3, game: game2, user: user)
GameStat.create(hours: 1034.9, game: game4, user: user)
GameStat.create(hours: 387.2, game: game5, user: user)
GameStat.create(hours: 211.8, game: game6, user: user)
GameStat.create(hours: 3754.2, game: game7, user: user)
GameStat.create(hours: 700, game: game8, user: user)
