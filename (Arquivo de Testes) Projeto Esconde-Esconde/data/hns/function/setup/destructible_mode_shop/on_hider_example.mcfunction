data modify entity @s Offers.Recipes set value [{}]
execute as @s run function hns:setup/destructible_mode_shop/remove_empty_trades_hiders
data modify entity @s Offers.Recipes set from storage minecraft:loja_destrutivel_escondedores Recipes
