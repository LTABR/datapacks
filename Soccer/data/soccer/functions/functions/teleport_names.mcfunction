schedule function soccer:functions/teleport_names 1t

execute unless score .index_teleport id matches 0.. run scoreboard players set .index_teleport id 1

execute as @e[type=minecraft:text_display,tag=select] if score @s id = .index_teleport id run tag @s add teleport
execute as @e[type=minecraft:item_display,tag=player] if score @s id = .index_teleport id run tag @s add teleport

execute as @e[type=minecraft:item_display,tag=teleport] at @s run tp @e[type=minecraft:text_display,tag=teleport] ~ ~0.35 ~
tag @e[tag=teleport] remove teleport
scoreboard players add .index_teleport id 1

# execute store result score .teleport spread run execute if entity @e[type=minecraft:text_display,distance=..0.1]
execute if score .index_teleport id >= .playerCount id run schedule clear soccer:functions/teleport_names
execute if score .index_teleport id >= .playerCount id run tag @e[type=text_display,tag=select] remove select
execute if score .index_teleport id >= .playerCount id run scoreboard objectives remove spread
execute if score .index_teleport id >= .playerCount id run scoreboard players reset .index_teleport
