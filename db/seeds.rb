# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
game = Game.create(title: 'STAR WARS Battlefront_II', game_id: '6060',
                   game_description: 'Join the rise of Darth Vader’s elite 501st Legion of Stormtroopers as you fight through an all new story-based saga where every action you take impacts the battlefront and, ultimately, the fate of the Star Wars galaxy.')
game2 = Game.create(title: 'Mirrors Edge', game_id: '17410',
                    game_description: 'In einer Stadt, in der Informationen streng überwacht sind, können nur agile Kuriere, genannt Runner, sensitive Daten transportieren und vor wachsamen Augen schützen. In diesem scheinbar utopischen Paradies wurde ein Verbrechen begangen - Ihre Schwester wurde als Sündenbock missbraucht')
game4 = Game.create(title: 'The Secret World Legends', game_id: '215280',
                    game_description: 'Secret World Legends ist ein storylastiges Shared World Action-RPG, in dem die Spieler in einen im Schatten geführten Krieg gegen übernatürliche Mächte eintauchen und ein Abenteuer erleben, das unsere Welt mit dem Reich der Mythen und Legenden verknüpft')
game5 = Game.create(title: 'Rocket League', game_id: '252950',
                    game_description: 'Soccer meets driving once again in the long-awaited, physics-based multiplayer-focused sequel to Supersonic Acrobatic Rocket-Powered Battle-Cars! Choose a variety of high-flying vehicles equipped with huge rocket boosters to score amazing aerial goals and pull-off incredible games-changing saves!')
game6 = Game.create(title: 'Team Fortress 2', game_id: '440',
                    game_description: 'Neun unterschiedliche Klassen erlauben eine breite Auswahl an taktischen Möglichkeiten und persönlichen Vorlieben. Das Spiel wird fortwährend mit neuen Spielmodi, Karten, Ausrüstungsstücken und - am wichtigsten - Hüten erweitert!')
game7 = Game.create(title: 'Cities Skyline', game_id: '255710',
                    game_description: 'Cities: Skylines ist die moderne Version der klassischen Städtebausimulation. Mit neuen Gameplay-Elementen stellt das Spiel Sie vor den Nervenkitzel und die Herausforderung, eine echte Stadt zu errichten und am Laufen zu halten, während es zugleich die bekannte Städtebau-Erfahrung ')
game8 = Game.create(title: 'Life is Strange', game_id: '319630',
                    game_description: 'Life Is Strange ist ein preisgekröntes und von Kritikern gefeiertes Abenteuerspiel in Episoden, das dem Spieler erlaubt, die Zeit zurückzudrehen und so Vergangenheit, Gegenwart und Zukunft zu beeinflussen.')

user = User.create(name: 'Wolfried', steam_id: '76561198034249290', email: 'wolfried@steam.de', password: '12345678')
user.save
GameStat.create(hours: 12.5, game: game, user: user)
GameStat.create(hours: 77.3, game: game2, user: user)
GameStat.create(hours: 1034.9, game: game4, user: user)
GameStat.create(hours: 387.2, game: game5, user: user)
GameStat.create(hours: 211.8, game: game6, user: user)
GameStat.create(hours: 3754.2, game: game7, user: user)
GameStat.create(hours: 700, game: game8, user: user)

user2 = User.create(name: 'TramRam', steam_id: '74572812376463385', email: 'tramram@steam.de', password: '12345678')
user2.save
GameStat.create(hours: 315.5, game: game, user: user2)
GameStat.create(hours: 90.3, game: game2, user: user2)
GameStat.create(hours: 150.2, game: game7, user: user2)
GameStat.create(hours: 12, game: game8, user: user2)

user3 = User.create(name: 'Huberta', steam_id: '43895938458348925', email: 'huberta@steam.de', password: '12345678')
user3.save
GameStat.create(hours: 22.3, game: game2, user: user3)
GameStat.create(hours: 533.9, game: game4, user: user3)
GameStat.create(hours: 1337.2, game: game5, user: user3)
GameStat.create(hours: 16.8, game: game6, user: user3)
