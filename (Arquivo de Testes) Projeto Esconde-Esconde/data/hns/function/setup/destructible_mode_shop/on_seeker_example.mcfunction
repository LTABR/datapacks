data modify entity @s Offers.Recipes set value [{}]
execute as @s run function hns:setup/destructible_mode_shop/remove_empty_trades_seekers
data modify entity @s Offers.Recipes set from storage minecraft:loja_destrutivel_procuradores Recipes

execute as @s at @s unless entity @a[tag=Admin,distance=..25] run fill ~ ~-1 ~ ~ ~-1 ~ air replace minecraft:red_shulker_box
