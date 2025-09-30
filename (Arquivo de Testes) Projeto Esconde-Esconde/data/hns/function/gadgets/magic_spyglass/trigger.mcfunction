execute as @s at @s facing entity @p[team=Escondedores] eyes run tp @s ~ ~ ~ facing entity @p[team=Escondedores]

execute as @s at @s anchored eyes facing entity @p[team=Escondedores] eyes run particle minecraft:campfire_signal_smoke ^ ^ ^1 0 0 0 0 1 force
execute as @s at @s anchored eyes facing entity @p[team=Escondedores] eyes run particle minecraft:campfire_signal_smoke ^ ^ ^1.5 0 0 0 0 1 force
execute as @s at @s anchored eyes facing entity @p[team=Escondedores] eyes run particle minecraft:campfire_signal_smoke ^ ^ ^2 0 0 0 0 1 force
execute as @s at @s anchored eyes facing entity @p[team=Escondedores] eyes run particle minecraft:campfire_signal_smoke ^ ^ ^2.5 0 0 0 0 1 force
execute as @s at @s anchored eyes facing entity @p[team=Escondedores] eyes run particle minecraft:campfire_signal_smoke ^ ^ ^3 0 0 0 0 1 force
execute as @s at @s anchored eyes facing entity @p[team=Escondedores] eyes run particle minecraft:campfire_signal_smoke ^ ^ ^3.5 0 0 0 0 1 force
execute as @s at @s anchored eyes facing entity @p[team=Escondedores] eyes run particle minecraft:campfire_signal_smoke ^ ^ ^4 0 0 0 0 1 force

playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 100 2

advancement revoke @s only hns:using_magic_spyglass

execute if items entity @s weapon.offhand minecraft:spyglass[minecraft:custom_data={magic:1b}] run return run item replace entity @s weapon.offhand with air
execute if items entity @s weapon.mainhand minecraft:spyglass[minecraft:custom_data={magic:1b}] run item replace entity @s weapon.mainhand with air
