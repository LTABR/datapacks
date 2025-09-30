scoreboard players add .pointer teleporterPriority 1
execute store success score .success teleporterPriority run execute as @a if score @s teleporterPriority = .pointer teleporterPriority
execute if score .success teleporterPriority matches 0 run scoreboard players operation .pointer teleporterPriority = .next teleporterPriority

execute as @a[scores={teleporterPriority=1..}] if score @s teleporterPriority = .pointer teleporterPriority run tag @s add tp
execute as @e[type=minecraft:interaction,tag=exit] at @s if score @s teleporterPriority = .pointer teleporterPriority run tp @p[tag=tp] ~ ~0.5 ~
execute as @e[type=minecraft:interaction,tag=exit] at @s if score @s teleporterPriority = .pointer teleporterPriority run tag @p[tag=tp] remove tp

execute as @e[type=minecraft:interaction,tag=exit] at @s if score @s teleporterPriority = .pointer teleporterPriority run function hns:gadgets/teleporter_plate/on_exit
execute as @a[scores={teleporterPriority=1..}] if score @s teleporterPriority = .pointer teleporterPriority run scoreboard players reset @s teleporterPriority

schedule function hns:gadgets/teleporter_plate/call_reset_cooldown 1s append
