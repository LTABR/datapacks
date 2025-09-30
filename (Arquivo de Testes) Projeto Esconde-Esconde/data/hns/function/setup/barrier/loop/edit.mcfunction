execute as @a[tag=Admin,scores={increaseBorder=1..}] run worldborder add 2
execute as @a[tag=Admin,scores={increaseBorder=1..}] at @s as @e[type=item,distance=..3] run data merge entity @s {PickupDelay: 0s}
execute as @a[tag=Admin,scores={increaseBorder=1..}] run scoreboard players reset * increaseBorder

execute as @a[tag=Admin,scores={decreaseBorder=1..}] run worldborder add -2
execute as @a[tag=Admin,scores={decreaseBorder=1..}] at @s as @e[type=item,distance=..3] run data merge entity @s {PickupDelay: 0s}
execute as @a[tag=Admin,scores={decreaseBorder=1..}] run scoreboard players reset * decreaseBorder

execute at @e[type=text_display,tag=centro,limit=1] store result score Blocos Diametro store result storage border_saves current_border.size int 1 run worldborder get

execute if items entity @a[tag=Admin] container.* command_block run schedule function hns:setup/barrier/loop/edit 1t

execute as @e[type=text_display,tag=centro,limit=1] at @s run worldborder center ~ ~
execute as @e[type=text_display,tag=centro,limit=1] at @s store result score CentroX Diametro run data get entity @s Pos[0]
execute as @e[type=text_display,tag=centro,limit=1] at @s store result score CentroZ Diametro run data get entity @s Pos[2]
