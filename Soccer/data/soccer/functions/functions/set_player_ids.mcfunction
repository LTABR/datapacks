scoreboard players reset * id
scoreboard players set @a[team=!admin] id -1
scoreboard players set @e[type=minecraft:item_display,tag=player] id -1
scoreboard players set @e[type=minecraft:text_display,tag=playername] id -1
execute store result score .playerCount id run execute if entity @a
execute as @a[limit=1] unless score .index id matches 0 run scoreboard players set .index id 1
execute as @p[scores={id=-1}] run scoreboard players operation @s id = .index id
execute as @e[type=minecraft:item_display,tag=player,limit=1,sort=random] run scoreboard players operation @s id = .index id
execute as @e[type=minecraft:text_display,tag=playername,limit=1,sort=random] run scoreboard players operation @s id = .index id

function soccer:functions/set_player_id_schedule
