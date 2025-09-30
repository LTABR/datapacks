execute store result score .remaining_hiders Opcoes run execute if entity @a[team=Escondedores,gamemode=!spectator]
execute if score .remaining_hiders Opcoes matches 1 run function hns:timer/end/last_standing_win

execute if score .shared_lives Opcoes matches 1 run scoreboard players set .remaining_team_size Opcoes 0
execute if score .shared_lives Opcoes matches 1 as @a[team=Escondedores,scores={shared_lives=1..},gamemode=!spectator] if score @s shared_lives = @p[team=Escondedores,gamemode=!spectator] shared_lives run scoreboard players add .remaining_team_size Opcoes 1
execute if score .shared_lives Opcoes matches 1 store result score .remaining_hiders Opcoes run execute if entity @a[team=Escondedores,gamemode=!spectator]

execute if score .shared_lives Opcoes matches 1 if score .remaining_hiders Opcoes = .remaining_team_size Opcoes run function hns:timer/end/last_standing_win
