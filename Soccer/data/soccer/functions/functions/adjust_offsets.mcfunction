schedule function soccer:functions/adjust_offsets 1t

scoreboard objectives add spread dummy

execute as @e[type=minecraft:item_display] at @s store result score @s spread run execute if entity @e[type=minecraft:item_display,distance=..0.1]

execute as @e[type=minecraft:item_display,tag=player,scores={spread=2..}] if score @s id = .index id at @s run function soccer:functions/adjust_offsets_schedule

execute as @e[type=minecraft:item_display,tag=player] unless score @s spread matches 2.. run schedule clear soccer:functions/adjust_offsets
execute as @e[type=minecraft:item_display,tag=player] unless score @s spread matches 2.. run function soccer:functions/rename_displays
