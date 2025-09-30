scoreboard objectives add playerCounter dummy
execute store result score .players playerCounter run execute if entity @a[scores={manual_seeker=1..}]
execute store result storage players count int 1.0 run scoreboard players get .players playerCounter
scoreboard players set .selected playerCounter 1

execute as @a[scores={manual_seeker=1..}] run function hns:configuration/set_seekers/create_storages with storage minecraft:players
