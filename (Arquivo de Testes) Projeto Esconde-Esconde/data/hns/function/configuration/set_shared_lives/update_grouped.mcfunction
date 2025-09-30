$scoreboard players operation @p[nbt={UUID:[I;$(uuid1),$(uuid2),$(uuid3),$(uuid4)]}] shared_lives = .currentTeam shared_lives

tag @r[scores={shared_lives=1..}] add on_team
execute as @a[scores={shared_lives=1..},tag=!on_team] if score @s shared_lives = @p[tag=on_team] shared_lives run scoreboard players set .shared_lives Opcoes 1
tag @a[tag=on_team] remove on_team

execute as @a[tag=Admin] run function hns:configuration/set_shared_lives/set_shared_lives_list
