tag @s add teleport_back
execute as @a[tag=teleport_back] at @s rotated as @s positioned ^ ^ ^-1 run summon marker ~ ~ ~ {Tags:["behind"]}
tp @s ~ ~500 ~

schedule function hns:functions/disable_storages_complement 1t

scoreboard players reset @s open_trapped_chest
scoreboard players reset @s open_chest
scoreboard players reset @s open_barrel
scoreboard players reset @s open_enderchest
scoreboard players reset @s open_shulker_box
scoreboard players reset @s open_blast_furnace
scoreboard players reset @s open_brewingstand
scoreboard players reset @s open_furnace
scoreboard players reset @s open_blast_furnace
scoreboard players reset @s open_smoker
scoreboard players reset @s open_dispenser
scoreboard players reset @s open_dropper
scoreboard players reset @s open_hopper
