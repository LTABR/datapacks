scoreboard players set .total_seconds timer 0
scoreboard players operation .minutes_elapsed timer = .total_seconds timer
execute if score .total_seconds timer matches 900
