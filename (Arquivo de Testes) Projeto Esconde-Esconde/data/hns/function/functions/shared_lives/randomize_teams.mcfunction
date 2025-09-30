execute as @a unless entity @s[scores={shared_lives=1..}] run scoreboard players set @s shared_lives -1

# its possible to make sizes up to 5
scoreboard players set .team_size shared_lives 2

scoreboard players set .current_team shared_lives 1

scoreboard players set .team_exists shared_lives 0

function hns:functions/shared_lives/randomize_teams_loop
