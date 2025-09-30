execute store result storage border_saves current_border.x int 1.0 run random value -200000..200000
execute store result storage border_saves current_border.z int 1.0 run random value -200000..200000

execute unless entity @s[type=minecraft:player] run setblock ~ ~ ~ air

function hns:setup/barrier/random/go_to_random_barrier with storage border_saves current_border
