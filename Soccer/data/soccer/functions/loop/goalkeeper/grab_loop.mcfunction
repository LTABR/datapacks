schedule function soccer:loop/goalkeeper/grab_loop 1t
execute as @e[tag=ball,type=minecraft:item_display] run data merge entity @s {transformation:{translation:[0f,-0.25f,0f]}}
execute as @a[limit=1,scores={grab=1}] at @s positioned ^ ^0.5 ^1 if block ~ ~ ~ air run tp @e[type=cat,limit=1,tag=ball] ~ ~ ~
execute as @e[type=interaction,tag=hitbox,tag=!launched] on attacker if entity @s[tag=goalkeeper] at @e[type=interaction,tag=hitbox] rotated as @s run function soccer:loop/goalkeeper/launch_ball
