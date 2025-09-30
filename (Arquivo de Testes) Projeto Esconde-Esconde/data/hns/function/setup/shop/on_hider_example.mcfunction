data modify entity @s Offers.Recipes set value [{}]
data modify entity @s Offers.Recipes set from storage minecraft:loja_escondedores Recipes
execute as @s run function hns:setup/shop/remove_empty_trades_hiders
execute as @s run data modify storage minecraft:loja_escondedores Recipes set from entity @s Offers.Recipes
