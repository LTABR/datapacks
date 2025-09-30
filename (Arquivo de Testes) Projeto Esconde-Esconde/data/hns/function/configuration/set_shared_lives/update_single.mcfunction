$scoreboard players reset @p[nbt={UUID:[I;$(uuid1),$(uuid2),$(uuid3),$(uuid4)]}] shared_lives

tag @r[scores={shared_lives=1..}] add on_team
execute unless entity @a[scores={shared_lives=1..},tag=!on_team] run scoreboard players set .shared_lives Opcoes 0
tag @a[tag=on_team] remove on_team

execute as @a[tag=Admin] run function hns:configuration/set_shared_lives/set_shared_lives_list
