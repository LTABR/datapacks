
scoreboard players remove .seekersPlaceholder Opcoes 1

execute if score .manual_seekers Opcoes matches 1 if entity @a[scores={manual_seeker=1..},gamemode=!spectator,team=!Procuradores] run team join Procuradores @p[scores={manual_seeker=1..},gamemode=!spectator]

execute if score .last_standing Opcoes matches 1 if score .shared_lives Opcoes matches 1 if score .manual_seekers Opcoes matches 1 if entity @a[scores={manual_seeker=1..}] store result score .hiders Opcoes run execute if entity @a[team=!Procuradores,gamemode=!spectator]
execute if score .last_standing Opcoes matches 1 if score .shared_lives Opcoes matches 1 if score .manual_seekers Opcoes matches 1 if entity @a[scores={manual_seeker=1..}] as @a[team=!Procuradores,scores={shared_lives=1..},gamemode=!spectator] if score @s shared_lives = @p[team=!Procuradores,scores={shared_lives=1..},gamemode=!spectator] shared_lives run scoreboard players add .hider_team Opcoes 1
execute if score .last_standing Opcoes matches 1 if score .shared_lives Opcoes matches 1 if score .manual_seekers Opcoes matches 1 if entity @a[scores={manual_seeker=1..}] if score .hider_team Opcoes = .hiders Opcoes run scoreboard players set .error Opcoes 6
execute if score .last_standing Opcoes matches 1 if score .shared_lives Opcoes matches 1 if score .manual_seekers Opcoes matches 1 if entity @a[scores={manual_seeker=1..}] if score .hider_team Opcoes = .hiders Opcoes run return run schedule function hns:missing_error 1t

execute store result score .selected_seekers Opcoes run execute if entity @a[team=Procuradores]

execute if score .seekersPlaceholder Opcoes matches 0.. unless score .selected_seekers Opcoes = .seekers Opcoes run team join Procuradores @r[gamemode=!spectator,tag=!spectating,team=!Procuradores]

execute if score .last_standing Opcoes matches 1 if score .shared_lives Opcoes matches 1 if score .seekersPlaceholder Opcoes matches 0 store result score .hiders Opcoes run execute if entity @a[team=!Procuradores,gamemode=!spectator]
execute if score .last_standing Opcoes matches 1 if score .shared_lives Opcoes matches 1 if score .seekersPlaceholder Opcoes matches 0 as @a[team=!Procuradores,scores={shared_lives=1..},gamemode=!spectator] if score @s shared_lives = @p[team=!Procuradores,scores={shared_lives=1..},gamemode=!spectator] shared_lives run scoreboard players add .hider_team Opcoes 1
execute if score .last_standing Opcoes matches 1 if score .shared_lives Opcoes matches 1 if score .seekersPlaceholder Opcoes matches 0 if score .hider_team Opcoes = .hiders Opcoes run team leave @a[team=Procuradores,scores={shared_lives=1..}]
execute if score .last_standing Opcoes matches 1 if score .shared_lives Opcoes matches 1 if score .seekersPlaceholder Opcoes matches 0 if score .hider_team Opcoes = .hiders Opcoes run scoreboard players operation .seekersPlaceholder Opcoes = .seekers Opcoes
scoreboard players reset .hider_team Opcoes

execute if score .seekersPlaceholder Opcoes matches 0 run scoreboard players reset .seekersPlaceholder Opcoes
execute if score .seekersPlaceholder Opcoes matches 1.. run function hns:sorter/sort_seekers
