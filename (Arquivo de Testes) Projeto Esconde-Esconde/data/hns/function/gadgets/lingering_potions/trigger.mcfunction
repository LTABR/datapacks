execute if data entity @s potion_contents.custom_effects[{id:"minecraft:unluck"}] if data entity @s potion_contents.custom_effects[{id:"minecraft:slow_falling"}] at @s on origin if entity @s[team=Escondedores,scores={thrown=1..}] run function hns:gadgets/lingering_potions/teleport_potion
execute if data entity @s potion_contents.custom_effects[{id:"minecraft:unluck"}] if data entity @s potion_contents.custom_effects[{id:"minecraft:luck"}] at @s on origin run function hns:gadgets/lingering_potions/dome_shield_potion

execute as @e[type=area_effect_cloud,tag=!smoke] if data entity @s potion_contents.custom_effects[{id:"minecraft:wither"}] if data entity @s potion_contents.custom_effects[{id:"minecraft:darkness"}] at @s run function hns:gadgets/lingering_potions/smoke_potion
