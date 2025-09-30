scoreboard objectives add playerCounter dummy
execute as @a[gamemode=!spectator] unless score @s shared_lives matches 1.. run scoreboard players add .players playerCounter 1
execute store result storage players count int 1.0 run scoreboard players get .players playerCounter
scoreboard players set .hasTeam playerCounter 0

execute as @a unless score @s shared_lives matches 1.. run function hns:configuration/set_seekers/create_storages with storage minecraft:players
