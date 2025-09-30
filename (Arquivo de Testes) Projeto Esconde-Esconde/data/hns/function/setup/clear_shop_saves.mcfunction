execute store result score .current_save shop_saves run data get storage options save

$data remove storage shop_save$(save) shop
$data remove storage shop_save$(save) destructible_shop

execute store result storage options save int 1.0 run scoreboard players remove .current_save shop_saves 1
execute if score .current_save shop_saves matches 1.. run function hns:setup/clear_shop_saves with storage options

scoreboard objectives remove shop_saves
