execute if entity @p[scores={seat=1..,seat_health=0..}] store result entity @s Health float 1.0 run scoreboard players get @p[scores={seat=1..,seat_health=0..}] seat_health
execute if entity @p[scores={seat=1..,seat_health=0..}] run scoreboard players reset @p[scores={seat=1..,seat_health=0..}] seat_health

scoreboard players add @p[scores={seat=1..}] ride_seat 1

ride @p[scores={seat=1..}] mount @s
tag @s add occupied

scoreboard players reset * seat
