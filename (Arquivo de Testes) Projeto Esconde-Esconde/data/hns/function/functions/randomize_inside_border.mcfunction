clear @s emerald[minecraft:custom_data={hiding_shop:1b}]
execute if entity @s[tag=using_shop] run return run function hns:functions/return_seeker_to_lobby with storage options ingame
effect give @s minecraft:slow_falling 2 255 true

execute store result score .shop_x Opcoes run data get storage border_saves current_border.x
execute store result score .shop_y Opcoes run data get storage border_saves current_border.y
execute store result score .shop_z Opcoes run data get storage border_saves current_border.z

scoreboard players set .2 Opcoes 2
execute store result score .border_size Opcoes run data get storage border_saves current_border.size
scoreboard players operation .border_size Opcoes /= .2 Opcoes
scoreboard players reset .2 Opcoes

execute store result storage border_saves current_border.random int 1.0 run scoreboard players get .border_size Opcoes
scoreboard players reset .border_size Opcoes

function hns:functions/generate_random_coords with storage border_saves current_border

execute store result storage border_saves current_border.shop_x int 1.0 run scoreboard players operation .shop_x Opcoes += .random_x Opcoes
execute store result storage border_saves current_border.shop_y int 1.0 run scoreboard players operation .shop_y Opcoes += .random_y Opcoes
execute store result storage border_saves current_border.shop_z int 1.0 run scoreboard players operation .shop_z Opcoes += .random_z Opcoes

scoreboard players reset .shop_x Opcoes
scoreboard players reset .shop_y Opcoes
scoreboard players reset .shop_z Opcoes
scoreboard players reset .random_x Opcoes
scoreboard players reset .random_y Opcoes
scoreboard players reset .random_z Opcoes

tag @s add using_shop

attribute @s gravity base set 0

function hns:functions/use_seeker_shop_hiding_time with storage border_saves current_border

scoreboard players reset @s seeker_shop
advancement revoke @s[advancements={hns:use_hiding_shop=true}] only hns:use_hiding_shop

give @s emerald[minecraft:custom_data={hiding_shop:1b},minecraft:consumable={},minecraft:item_name={"text":"Usar Loja","color":"gold","bold":true,"italic":false,"underlined":true},minecraft:lore=[[{"text":"Use ","color":"gray","italic":false},{"keybind":"key.use","color":"white","italic":false,"underlined":true},{"text":" Para Ir Até a Loja."}]]] 1
