advancement revoke @s only hns:use_ninja_bomb
particle minecraft:smoke ~ ~1 ~ 0.5 0.65 0.5 0.05 1500
effect give @s minecraft:invisibility 5 255 false

execute if items entity @s[tag=!has_boots] armor.feet minecraft:golden_boots run tag @s add has_boots
execute if items entity @s[tag=!has_leggings] armor.legs minecraft:netherite_leggings run tag @s add has_leggings
execute if items entity @s armor.feet minecraft:golden_boots run item replace entity @s armor.feet with air
execute if items entity @s armor.legs minecraft:netherite_leggings run item replace entity @s armor.legs with air

playsound minecraft:entity.ghast.shoot player @s ~ ~ ~ 0.5 2

schedule function hns:gadgets/ninja_bomb/return 5s append

execute if items entity @s weapon.mainhand minecraft:gunpowder[custom_data={bombaninja:1b}] run return run item replace entity @s weapon.mainhand with air
execute if items entity @s weapon.offhand minecraft:gunpowder[custom_data={bombaninja:1b}] run item replace entity @s weapon.offhand with air
