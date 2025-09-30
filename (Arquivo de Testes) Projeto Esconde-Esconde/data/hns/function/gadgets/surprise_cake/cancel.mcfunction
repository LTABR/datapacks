advancement revoke @s only hns:shot_crossbow_while_invisible

effect clear @s minecraft:luck
effect clear @s minecraft:invisibility

attribute @s minecraft:attack_damage base set -100
attribute @s minecraft:jump_strength base set 0
effect give @s minecraft:slowness 1 10 true

item replace entity @s[tag=has_leggings] armor.legs with netherite_leggings[minecraft:custom_data={no_glowing:1b},minecraft:lore= [{"color":"gray","extra":[{"bold":true,"color":"white","italic":false,"text":"Não","underlined":true},{"color":"gray","italic":false,"text":" Brilhará ao Correr."}],"italic":false,"text":"Quando Equipado, Você "}], minecraft:unbreakable= {}, tooltip_display={hidden_components:["unbreakable"]}, minecraft:trim= {material: "minecraft:gold", pattern: "minecraft:silence"}] 1
tag @s remove has_leggings

tag @s remove used_surprise_cake
