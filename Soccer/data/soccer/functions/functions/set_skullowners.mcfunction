execute unless score .index_skullowner id matches 0.. run scoreboard players set .index_skullowner id 0

tag @p[team=!admin,tag=!select,tag=!selected] add select
execute as @a[tag=select] run loot replace entity @s armor.head loot hns:entities/player

scoreboard players add .index_skullowner id 1
execute as @e[type=item_display,tag=player] if score @s id = .index_skullowner id run function soccer:functions/set_skullowners_schedule
tag @a[tag=select] add selected
tag @a[tag=select] remove select

execute if entity @a[team=!admin,tag=!selected] run schedule function soccer:functions/set_skullowners 1t
execute unless entity @a[team=!admin,tag=!selected] run tag @a remove selected
execute unless entity @a[team=!admin,tag=!selected] run scoreboard players reset .index_skullowner id
