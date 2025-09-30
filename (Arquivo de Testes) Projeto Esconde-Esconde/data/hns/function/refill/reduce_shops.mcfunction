$kill @e[type=villager,tag=shop,limit=$(shops_remaining),sort=furthest]

data remove storage current_shops shops_remaining

scoreboard players reset .current_players Opcoes
scoreboard players reset .current_shops Opcoes
