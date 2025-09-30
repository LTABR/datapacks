execute as @e[type=minecraft:block_display,tag=block_ready] at @s run data merge entity @s {transformation:{translation:[0.0f,1.0f,0.0f],scale:[1.5,2.5,1.5]},interpolation_duration:4,start_interpolation:-1,Tags:["block","block_closed"]}
schedule function hns:gadgets/teleporter_plate/animations/animate_out 1s
