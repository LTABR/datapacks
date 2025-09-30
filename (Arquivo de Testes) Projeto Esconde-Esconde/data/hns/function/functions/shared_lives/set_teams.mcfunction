scoreboard players add .current_team shared_lives 1

execute as @a[team=Escondedores,scores={shared_lives=1..},gamemode=!spectator] if score @s shared_lives = .current_team shared_lives run scoreboard players add .team_size shared_lives 1
execute as @a[team=Escondedores,scores={shared_lives=1..},gamemode=!spectator] if score @s shared_lives = .current_team shared_lives run scoreboard players add .team_size_both shared_lives 1

execute if score .team_size_both shared_lives matches 1 as @a[scores={shared_lives=1..}] if score @s shared_lives = .current_team shared_lives run function hns:functions/shared_lives/set_normal_health with storage options hiders
scoreboard players reset .team_size_both shared_lives

scoreboard players operation .current_team_health shared_lives = .team_size shared_lives
execute store result score .health shared_lives run data get storage options hiders.health
scoreboard players operation .current_team_health shared_lives *= .health shared_lives
scoreboard players reset .health shared_lives

execute store result storage options multiplied_health int 1.0 run scoreboard players get .current_team_health shared_lives

execute if score .team_size shared_lives matches 2.. as @a[scores={shared_lives=1..}] if score @s shared_lives = .current_team shared_lives run function hns:functions/shared_lives/calculate_health with storage minecraft:options

scoreboard players reset .team_size shared_lives

execute as @a[scores={shared_lives=1..}] if score .current_team shared_lives >= @s shared_lives run scoreboard players reset .current_team shared_lives
execute as @a[scores={shared_lives=1..}] if score .current_team shared_lives < @s shared_lives run schedule function hns:functions/shared_lives/set_teams 1t
