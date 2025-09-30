scoreboard players operation .biggest chorus > @e[type=block_display,tag=destination,scores={chorus=40..}] chorus
execute as @e[type=block_display,tag=destination,scores={chorus=40..}] if score @s chorus = .biggest chorus run kill @s

scoreboard players reset .biggest chorus
