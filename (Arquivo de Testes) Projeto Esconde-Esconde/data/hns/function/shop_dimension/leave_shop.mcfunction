execute as @s if dimension hns:shop at @s at @e[tag=shop_center,distance=..30,sort=nearest,limit=1] positioned ~-11 ~-7 ~-23 run fill ~47 ~47 ~47 ~ ~ ~ air
execute as @s if dimension hns:shop at @s at @e[tag=shop_center,distance=..30,sort=nearest,limit=1] run kill @e[type=item,distance=..30]
execute as @s if dimension hns:shop at @s at @e[tag=shop_center,distance=..30,sort=nearest,limit=1] run forceload remove ~-1 ~-17 ~16 ~16
execute as @s if dimension hns:shop at @s run kill @e[tag=tip,distance=..30,sort=nearest,limit=1]
execute as @s if dimension hns:shop at @s run kill @e[tag=shop_center,distance=..30,sort=nearest,limit=1]
execute as @s if dimension hns:shop at @s run function hns:shop_dimension/main_menu/clear_interface

data modify storage minecraft:shop_dimension player.SpawnDimension set from entity @s respawn.dimension
data modify storage minecraft:shop_dimension player.SpawnX set from entity @s respawn.pos[0]
data modify storage minecraft:shop_dimension player.SpawnY set from entity @s respawn.pos[1]
data modify storage minecraft:shop_dimension player.SpawnZ set from entity @s respawn.pos[2]

execute as @s at @s run function hns:shop_dimension/main_menu/return_player with storage shop_dimension player
execute as @s at @s run attribute @s minecraft:block_interaction_range base reset
execute as @s at @s run attribute @s minecraft:step_height base reset
execute as @s at @s run attribute @s minecraft:jump_strength base reset

tag @s[tag=at_shop] remove at_shop
