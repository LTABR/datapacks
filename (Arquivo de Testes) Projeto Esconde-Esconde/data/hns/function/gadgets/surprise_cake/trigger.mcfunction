advancement revoke @s only hns:use_surprise_cake
particle minecraft:cherry_leaves ~ ~1 ~ 0.35 0.65 0.35 1 1500
effect give @s minecraft:invisibility 5 255 false

execute if items entity @s[tag=!has_leggings] armor.legs minecraft:netherite_leggings run tag @s add has_leggings
execute if items entity @s armor.legs minecraft:netherite_leggings run item replace entity @s armor.legs with air

playsound minecraft:entity.slime.jump player @s ~ ~ ~ 1 0

tag @s add used_surprise_cake
attribute @s minecraft:attack_damage base set -100

schedule function hns:gadgets/surprise_cake/stun 200t append

execute if items entity @s weapon.mainhand minecraft:cake[minecraft:custom_data={surprise_cake:1b}] run return run item replace entity @s weapon.mainhand with air
execute if items entity @s weapon.offhand minecraft:cake[minecraft:custom_data={surprise_cake:1b}] run item replace entity @s weapon.offhand with air
