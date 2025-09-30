scoreboard players operation .biggest teleport_order > @a[scores={teleport_order=1..}] teleport_order
execute as @a[scores={teleport_order=1..}] if score @s teleport_order = .biggest teleport_order run tag @s remove trigger
execute as @a[scores={teleport_order=1..}] if score @s teleport_order = .biggest teleport_order run scoreboard players reset @s teleport_order
scoreboard players reset .biggest teleport_order
