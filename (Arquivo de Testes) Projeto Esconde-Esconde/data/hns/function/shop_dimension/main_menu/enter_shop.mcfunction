tag @s add at_shop
execute unless score @s esmeraldas matches 0.. run scoreboard players set @s esmeraldas 0
execute unless dimension hns:shop in hns:shop run tp @s 0 0 0 -90 0

schedule function hns:shop_dimension/main_menu/generate_shop 10t
# schedule function hns:shop_dimension/loop 10t
