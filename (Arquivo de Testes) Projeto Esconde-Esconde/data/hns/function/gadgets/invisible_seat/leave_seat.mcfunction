execute store result score @p[scores={ride_seat=1..}] seat_health store result score @s seat_health run data get entity @s Health
scoreboard players set .30 seat_health 30
execute store result storage seat_health Health int 1.0 run scoreboard players operation .30 seat_health -= @s seat_health
scoreboard players reset .30 seat_health

function hns:gadgets/invisible_seat/return_item with storage seat_health
scoreboard players reset @p[scores={ride_seat=1..}] ride_seat

tp @s ~ ~-500 ~
kill @s
