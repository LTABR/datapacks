execute as @e[type=area_effect_cloud] if data entity @s potion_contents.custom_effects[{id:"minecraft:wither"}] if data entity @s potion_contents.custom_effects[{id:"minecraft:darkness"}] run tag @s add smoke
scoreboard players reset * thrown
