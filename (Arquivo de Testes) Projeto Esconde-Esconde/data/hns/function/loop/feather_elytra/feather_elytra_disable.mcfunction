execute if score .crawling Opcoes matches 1 as @s[team=Escondedores] run function hns:loop/feather_elytra/reset_jump with storage minecraft:options hiders
execute if score .crawling Opcoes matches 1 as @s[team=Procuradores] run function hns:loop/feather_elytra/reset_jump with storage minecraft:options seekers

item replace entity @s[predicate=hns:has_elytra] armor.chest with air
item replace entity @s[predicate=hns:has_chainmail_chestplate] armor.chest with air

execute as @s[team=Escondedores,predicate=!hns:has_chainmail_chestplate] run function hns:loop/feather_elytra/reset_jump with storage minecraft:options hiders
execute as @s[team=Procuradores,predicate=!hns:has_chainmail_chestplate] run function hns:loop/feather_elytra/reset_jump with storage minecraft:options seekers

tag @s remove using_feather
