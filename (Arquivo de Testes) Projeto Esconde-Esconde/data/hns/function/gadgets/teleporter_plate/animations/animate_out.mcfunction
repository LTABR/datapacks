execute as @e[type=minecraft:block_display,tag=block_closed] at @s run data merge entity @s {transformation:{translation:[0.0f,0.0f,0.0f],scale:[0.0,0.0,0.0]},interpolation_duration:4,start_interpolation:-1,Tags:["block","block_open"]}
schedule function hns:gadgets/teleporter_plate/animations/end_animation 5t
