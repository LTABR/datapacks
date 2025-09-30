schedule function soccer:functions/set_player_id_schedule 1t

execute if score .index id matches 1.. run scoreboard players add .index id 1
execute as @a[scores={id=-1}] unless score @s id matches 0.. run scoreboard players operation @s id = .index id
execute as @e[type=minecraft:item_display,tag=player,scores={id=-1}] unless score @s id matches 0.. run scoreboard players operation @s id = .index id
execute as @e[type=minecraft:text_display,tag=playername,scores={id=-1}] unless score @s id matches 0.. run scoreboard players operation @s id = .index id

execute if score .index id = .playerCount id run schedule clear soccer:functions/set_player_id_schedule
