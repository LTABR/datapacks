particle minecraft:cloud ~ ~-0.25 ~ 0.5 0.25 0.5 0 10 normal

execute store result score @s Cronometro run data get entity @s Pos[1]
execute if score @s Cronometro matches 319.. run return run damage @s 0.1
scoreboard players reset @s Cronometro

effect clear @s[tag=!levitation_applied,tag=!gliding_applied] levitation
effect give @s[tag=!levitation_applied,tag=!gliding_applied] levitation 5 0
tag @s[tag=!gliding_applied] add levitation_applied

schedule function hns:gadgets/unstable_cloud_spell/start_floating 99t append
schedule function hns:gadgets/unstable_cloud_spell/schedule_cancel 1t append
