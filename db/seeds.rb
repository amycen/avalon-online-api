# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Message.delete_all
#Game.delete_all
#User.delete_all
Role.delete_all


#Game.create([{name: "GAME 1", num_of_players: 5, status: "WAITING"}, {name: "GAME 2", num_of_players: 10, status: "IN_PROGRESS"}, {name: "GAME 3", num_of_players: 7, status: "FINISHED"} ])
#User.create([{username: "AA", password: "123"},{username: "BB", password: "123"},{username: "CC", password: "123"},{username: "DD", password: "123"},{username: "EE", password: "123"}])

Role.create([
    {name: "Merlin Knows Evil", faction: "good", abbreviation: "MER", img_url: "https://gamepedia.cursecdn.com/eternitywiki/e/e0/Pallegina-portrait.jpg?version=d7ecf31cae0c64e683894dda431260f4"}, {name: "Percival", faction: "good", abbreviation: "PER", img_url: "https://gamepedia.cursecdn.com/eternitywiki/4/41/Human_male_PoE1_portrait_07_lg.png?version=a3cac8a8fc8a7a52876d420d047ff03b"}, 
    
    {name: "Loyal Servant of Author", faction: "good", abbreviation: "LS1", img_url: "https://gamepedia.cursecdn.com/eternitywiki/9/90/Aumaua_female_PoE1_portrait_1_lg.png?version=cdd740cd7a3c5d41553662756c5139ad"},

    {name: "Loyal Servant of Author", faction: "good", abbreviation: "LS2", img_url: "https://gamepedia.cursecdn.com/eternitywiki/c/cc/Dwarf_female_PoE1_portrait_2_lg.png?version=7a1139432e6758a893d89417b2eee5df"},

    {name: "Loyal Servant of Author", faction: "good", abbreviation: "LS3", img_url: "https://gamepedia.cursecdn.com/eternitywiki/c/c9/Human_male_PoE1_portrait_08_lg.png?version=2033be06ec76d5d71bd265dee60f3062"},

    {name: "Loyal Servant of Author", faction: "good", abbreviation: "LS4", img_url: "https://gamepedia.cursecdn.com/eternitywiki/e/e7/Portrait_Tek%C4%93hu_lg.png?version=a20ceb4a87c6b30de0f67aa5e1fb4f20"},

    {name: "Loyal Servant of Author", faction: "good", abbreviation: "LS5", img_url: "https://gamepedia.cursecdn.com/eternitywiki/1/1a/Dwarf_male_PoE1_portrait_1_lg.png?version=f058f4663b605b4a6070bdbb82227134"},

    {name: "Assassin Kills Merlin", faction: "bad", abbreviation: "ASS", img_url: "https://gamepedia.cursecdn.com/eternitywiki/9/9a/Elf_female_PoE1_portrait_3_lg.png?version=832bbf21c1d3f0bf0b5ca81ad984151f"},

    {name: "Minion of Mordred", faction: "bad", abbreviation: "MM1", img_url: "https://gamepedia.cursecdn.com/eternitywiki/a/a8/Godlike_male_PoE1_portrait_3_lg.png?version=a5823b176924282d6dd3838f2f7a5414"},

    {name: "Minion of Mordred", faction: "bad", abbreviation: "MM2", img_url: "https://gamepedia.cursecdn.com/eternitywiki/6/6a/Orlan_male_PoE1_portrait_1_lg.png?version=ffd5acb18a3a2da49bd23e627a1b0c70"},

    {name: "Minion of Mordred", faction: "bad", abbreviation: "MM3", img_url: "https://gamepedia.cursecdn.com/eternitywiki/5/5c/Portrait_Rekke_lg.png?version=6debf0923cfa20d55a29618568284afd"},

    {name: "Morgana", faction: "bad", abbreviation: "MGA", img_url: "https://gamepedia.cursecdn.com/eternitywiki/d/dc/Elf_female_PoE1_portrait_1_lg.png?version=1a02817975e5905ec67006a403029f23"},

    {name: "Mordred", faction: "bad", abbreviation: "MRD", img_url: "https://gamepedia.cursecdn.com/eternitywiki/d/df/Godlike_male_PoE1_portrait_1_lg.png?version=998212635e54e84c070d59479ced3f06"},

    {name: "Oberon", faction: "bad", abbreviation: "OBN", img_url: "https://gamepedia.cursecdn.com/eternitywiki/d/df/Portrait_vatnir_lg.png?version=d9f75ea1509766fc8ae57220b4827d9e"}

    ])