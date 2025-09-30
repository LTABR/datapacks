execute as @e[type=mannequin,tag=doll] at @s run tp ~ -1000 ~
kill @e[type=mannequin,tag=doll]

summon marker ~ ~ ~ {Tags:["clone_start","clone_point"]} 
execute rotated as @s run summon marker ^ ^ ^1 {Tags:["clone_end","clone_point"]}

execute as @e[type=marker,tag=clone_point,limit=2,distance=..3] at @s store result score @s clone_x run data get entity @s Pos[0] 100
execute as @e[type=marker,tag=clone_point,limit=2,distance=..3] at @s store result score @s clone_y run data get entity @s Pos[1] 100
execute as @e[type=marker,tag=clone_point,limit=2,distance=..3] at @s store result score @s clone_z run data get entity @s Pos[2] 100

execute as @e[type=marker,tag=clone_end,limit=1] store result storage options mannequin.motion_x double 0.01 run scoreboard players operation @s clone_x -= @e[type=marker,tag=clone_start,limit=1] clone_x
execute as @e[type=marker,tag=clone_end,limit=1] store result storage options mannequin.motion_y double 0.015 run scoreboard players operation @s clone_y -= @e[type=marker,tag=clone_start,limit=1] clone_y
execute as @e[type=marker,tag=clone_end,limit=1] store result storage options mannequin.motion_z double 0.01 run scoreboard players operation @s clone_z -= @e[type=marker,tag=clone_start,limit=1] clone_z

execute as @e[type=marker,tag=clone_point,limit=2,distance=..3] run scoreboard players get @s clone_x

kill @e[type=marker,tag=clone_point,limit=2,distance=..3]

execute unless items entity @s saddle * run item replace entity @s saddle with minecraft:debug_stick[equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]
execute if items entity @s saddle * run item modify entity @s saddle hns:set_player_name

data modify storage options mannequin.playername set string entity @s equipment.saddle.components.minecraft:item_name.click_event.command 6 -1

data modify storage options mannequin.rotation_x set from entity @s Rotation[0]
data modify storage options mannequin.rotation_y set from entity @s Rotation[1]

function hns:gadgets/clone_jump/on_mannequin with storage options mannequin

stopsound @a[distance=..15] * entity.guardian.attack

tag @s add ghost
gamemode spectator @s[tag=ghost]

execute if entity @s[gamemode=spectator] run spectate @e[type=mannequin,tag=doll,limit=1,sort=nearest]

advancement revoke @s only hns:use_clone_jump
