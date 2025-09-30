execute as @r[scores={shared_lives=1..},team=Escondedores,tag=!team_sorted] at @s run function hns:functions/shared_lives/message_teams_complement

tellraw @a[scores={shared_lives=1..},team=Escondedores,tag=current_team] [{"text":"Você Está Dividindo Vida Com: "},{"selector":"@a[tag=current_team]","color":"aqua"}]
tag @a[tag=current_team] remove current_team

execute unless entity @a[team=Escondedores,scores={shared_lives=1..},tag=!team_sorted] run tag @a[tag=team_sorted] remove team_sorted
execute unless entity @a[team=Escondedores,scores={shared_lives=1..},tag=!team_sorted] run schedule function hns:functions/shared_lives/message_teams 1t
