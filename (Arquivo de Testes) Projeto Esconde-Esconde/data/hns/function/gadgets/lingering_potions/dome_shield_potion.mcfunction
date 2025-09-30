execute as @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute at @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest] run function hns:gadgets/dome_shield_spell/build_dome

kill @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest]
scoreboard players reset @s thrown
