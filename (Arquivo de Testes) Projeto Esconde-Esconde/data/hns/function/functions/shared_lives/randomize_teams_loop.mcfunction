execute as @a[scores={shared_lives=1..}] if score @s shared_lives = .current_team shared_lives run scoreboard players add .team_exists shared_lives 1
execute if score .team_exists shared_lives >= .team_size shared_lives run scoreboard players add .current_team shared_lives 1
execute if score .team_exists shared_lives >= .team_size shared_lives run scoreboard players set .team_exists shared_lives 0

execute if score .team_exists shared_lives < .team_size shared_lives run scoreboard players operation @r[scores={shared_lives=-1}] shared_lives = .current_team shared_lives

execute if entity @a[scores={shared_lives=-1}] run schedule function hns:functions/shared_lives/randomize_teams_loop 1t

execute unless entity @a[scores={shared_lives=-1}] run scoreboard players reset .current_team shared_lives
execute unless entity @a[scores={shared_lives=-1}] run scoreboard players reset .team_exists shared_lives
execute unless entity @a[scores={shared_lives=-1}] run scoreboard players reset .team_size shared_lives
execute unless entity @a[scores={shared_lives=-1}] as @a[tag=Admin] run function hns:configuration/set_shared_lives/set_shared_lives_list
scoreboard players reset .team_exists shared_lives
