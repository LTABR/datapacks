data modify entity @s Offers.Recipes set value [{}]
data modify entity @s Offers.Recipes set from storage minecraft:loja_procuradores Recipes
execute as @s run function hns:setup/shop/remove_empty_trades_seekers
execute as @s run data modify storage minecraft:loja_procuradores Recipes set from entity @s Offers.Recipes

execute at @s unless entity @a[tag=Admin,distance=..15] run fill ~ ~-1 ~ ~ ~-1 ~ air replace minecraft:red_shulker_box
