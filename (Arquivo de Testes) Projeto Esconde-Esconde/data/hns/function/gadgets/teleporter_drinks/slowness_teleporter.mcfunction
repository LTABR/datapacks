tp @s @e[type=text_display,tag=spawnprocuradores,limit=1]

execute at @e[type=text_display,tag=spawnprocuradores,limit=1] run playsound entity.player.teleport player @a ~ ~ ~ 2 0
execute at @e[type=text_display,tag=spawnprocuradores,limit=1] run particle minecraft:reverse_portal ~ ~ ~ 0 0.5 0 10 1000 normal
execute at @e[type=text_display,tag=spawnprocuradores,limit=1] run particle minecraft:portal ~ ~ ~ 0 0.5 0 10 1000 normal
execute at @e[type=text_display,tag=spawnprocuradores,limit=1] run particle minecraft:enchant ~ ~ ~ 0 0.5 0 10 1000 normal

effect clear @s minecraft:bad_omen
effect give @s slowness 8 3
effect give @s weakness 5 3

schedule function hns:gadgets/teleporter_drinks/remove_bad_omen 1t
