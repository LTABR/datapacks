$execute store result storage player$(count) uuid1 int 1.0 run data get entity @s UUID[0]
$execute store result storage player$(count) uuid2 int 1.0 run data get entity @s UUID[1]
$execute store result storage player$(count) uuid3 int 1.0 run data get entity @s UUID[2]
$execute store result storage player$(count) uuid4 int 1.0 run data get entity @s UUID[3]

execute if score .players playerCounter matches 1.. run scoreboard players remove .players playerCounter 1
execute store result storage players count int 1.0 run scoreboard players get .players playerCounter

$execute if score .selected playerCounter matches 0 run function hns:configuration/set_seekers/tellraw_selected with storage minecraft:player$(count)
$execute if score .selected playerCounter matches 1 run function hns:configuration/set_seekers/tellraw_unselected with storage minecraft:player$(count)
$execute if score .hasTeam playerCounter matches 0 run function hns:configuration/set_shared_lives/tellraw_grouped with storage minecraft:player$(count)
$execute if score .hasTeam playerCounter matches 1 run function hns:configuration/set_shared_lives/tellraw_single with storage minecraft:player$(count)

$data remove storage minecraft:player$(count) uuid1
$data remove storage minecraft:player$(count) uuid2
$data remove storage minecraft:player$(count) uuid3
$data remove storage minecraft:player$(count) uuid4

execute if score .players playerCounter matches 0.. run function hns:configuration/set_seekers/create_storages with storage minecraft:players count
execute if score .players playerCounter matches 0 run data remove storage players count
execute if score .players playerCounter matches 0 run scoreboard objectives remove playerCounter
