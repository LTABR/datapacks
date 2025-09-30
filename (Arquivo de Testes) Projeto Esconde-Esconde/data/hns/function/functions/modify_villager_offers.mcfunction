execute if score .destructible_mode Opcoes matches 0 as @s[type=minecraft:villager,tag=loja_escondedor] run data modify entity @s Offers.Recipes set from storage minecraft:loja_escondedores Recipes
execute if score .destructible_mode Opcoes matches 0 as @s[type=minecraft:villager,tag=loja_procurador] run data modify entity @s Offers.Recipes set from storage minecraft:loja_procuradores Recipes

execute if score .destructible_mode Opcoes matches 1 as @s[type=minecraft:villager,tag=loja_escondedor] run data modify entity @s Offers.Recipes set from storage minecraft:loja_destrutivel_escondedores Recipes
execute if score .destructible_mode Opcoes matches 1 as @s[type=minecraft:villager,tag=loja_procurador] run data modify entity @s Offers.Recipes set from storage minecraft:loja_destrutivel_procuradores Recipes
