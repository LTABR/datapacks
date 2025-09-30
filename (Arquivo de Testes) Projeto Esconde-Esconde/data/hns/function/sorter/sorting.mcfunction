execute as @a at @s run title @s times 0t 60t 0t
schedule function hns:sorter/sort 1t append
schedule function hns:sorter/sort 2t append
schedule function hns:sorter/sort 3t append
schedule function hns:sorter/sort 4t append
schedule function hns:sorter/sort 5t append
schedule function hns:sorter/sort 6t append
schedule function hns:sorter/sort 7t append
schedule function hns:sorter/sort 8t append
schedule function hns:sorter/sort 9t append
schedule function hns:sorter/sort 10t append
schedule function hns:sorter/sort 11t append
schedule function hns:sorter/sort 12t append
schedule function hns:sorter/sort 13t append
schedule function hns:sorter/sort 14t append
schedule function hns:sorter/sort 15t append
schedule function hns:sorter/sort 16t append
schedule function hns:sorter/sort 17t append
schedule function hns:sorter/sort 18t append
schedule function hns:sorter/sort 19t append
schedule function hns:sorter/sort 1s append
schedule function hns:sorter/sort 21t append
schedule function hns:sorter/sort 22t append
schedule function hns:sorter/sort 23t append
schedule function hns:sorter/sort 24t append
schedule function hns:sorter/sort 25t append
schedule function hns:sorter/sort 26t append
schedule function hns:sorter/sort 27t append
schedule function hns:sorter/sort 28t append
schedule function hns:sorter/sort 29t append
schedule function hns:sorter/sort 30t append
schedule function hns:sorter/sort 31t append
schedule function hns:sorter/sort 34t append
schedule function hns:sorter/sort 37t append
schedule function hns:sorter/sort 2s append
schedule function hns:sorter/sort 43t append
schedule function hns:sorter/sort 46t append
schedule function hns:sorter/sort 49t append
schedule function hns:sorter/sort 52t append
schedule function hns:sorter/sort 55t append
schedule function hns:sorter/sort 58t append
schedule function hns:sorter/sort 61t append
schedule function hns:sorter/sort 64t append
schedule function hns:sorter/sort 67t append
schedule function hns:sorter/sort 70t append
schedule function hns:sorter/sort 73t append
schedule function hns:sorter/sort 76t append
schedule function hns:sorter/sort 79t append
schedule function hns:sorter/sort 82t append
schedule function hns:sorter/sort 85t append
schedule function hns:sorter/sort 88t append
schedule function hns:sorter/sort 91t append
schedule function hns:sorter/sort 94t append
schedule function hns:sorter/sort 97t append
schedule function hns:sorter/sort 5s append
schedule function hns:sorter/sort 103t append
schedule function hns:sorter/sort 106t append
schedule function hns:sorter/sort 109t append
schedule function hns:sorter/sort 112t append
schedule function hns:sorter/sort 115t append
schedule function hns:sorter/sort 118t append
schedule function hns:sorter/sort 121t append
schedule function hns:sorter/sort 127t append
schedule function hns:sorter/sort 133t append
schedule function hns:sorter/sort 139t append
schedule function hns:sorter/sort 145t append
schedule function hns:sorter/sort 151t append
schedule function hns:sorter/sort 157t append
schedule function hns:sorter/sort 161t append
schedule function hns:sorter/sort 167t append
schedule function hns:sorter/sort 173t append
schedule function hns:sorter/sort 179t append
schedule function hns:sorter/end_sorter 9s

execute if score .manual_seekers Opcoes matches 1 store result score .selected_seekers Opcoes run execute if entity @a[scores={manual_seeker=1..},gamemode=!spectator]
execute if score .manual_seekers Opcoes matches 0 run scoreboard players set .selected_seekers Opcoes 0

execute if score .manual_seekers Opcoes matches 1 if score .selected_seekers Opcoes < .seekers Opcoes if entity @a[scores={manual_seeker=0..}] run tellraw @a [{"selector":"@a[scores={manual_seeker=1..}]","bold": true,"underlined": true,"color": "red"},{"text":" Será(ão) Procurador(es)!","bold": false,"underlined": false,"color": "white"}]
execute if score .manual_seekers Opcoes matches 1 if score .selected_seekers Opcoes = .seekers Opcoes if entity @a[scores={manual_seeker=0..}] run tellraw @a [{"selector":"@a[scores={manual_seeker=1..}]","bold": true,"underlined": true,"color": "red"},{"text":" é/são Procurador(es) Por Seleção Manual!","bold": false,"underlined": false,"color": "white"}]

execute if score .manual_seekers Opcoes matches 1 if score .selected_seekers Opcoes > .seekers Opcoes run tellraw @a[tag=Admin] {"text":"Haviam Mais Procuradores Manuais do Que Procuradores Iniciais, Redefinido Para Sorteio Aleatório.","color": "red"}
execute if score .manual_seekers Opcoes matches 1 if score .selected_seekers Opcoes > .seekers Opcoes run scoreboard players reset * manual_seeker
execute if score .manual_seekers Opcoes matches 1 if score .selected_seekers Opcoes > .seekers Opcoes run scoreboard players set .selected_seekers Opcoes 0

execute if score .manual_seekers Opcoes matches 1 if score .selected_seekers Opcoes = .seekers Opcoes run schedule clear hns:sorter/sort
execute if score .manual_seekers Opcoes matches 1 if score .selected_seekers Opcoes = .seekers Opcoes run schedule clear hns:sorter/end_sorter
execute if score .manual_seekers Opcoes matches 1 if score .selected_seekers Opcoes = .seekers Opcoes run function hns:sorter/end_sorter
