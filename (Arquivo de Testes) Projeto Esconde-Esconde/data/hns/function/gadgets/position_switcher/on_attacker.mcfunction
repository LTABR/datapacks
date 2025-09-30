execute unless entity @e[type=block_display,tag=switch_position] run summon block_display ~ ~ ~ {Tags:["switch_position","positions"]}
execute rotated as @s positioned ^ ^ ^ run tp @e[type=block_display,tag=switch_position] ^ ^ ^ ~ ~
tag @s add attacker

particle minecraft:enchanted_hit ~ ~1 ~ 0.0 0.5 0.0 0.5 100 normal
playsound minecraft:entity.player.teleport master @a ~ ~ ~ 1 0
stopsound @a[distance=..15] * minecraft:entity.player.hurt
stopsound @a[distance=..15] * minecraft:item.crossbow.hit
stopsound @a[distance=..15] * minecraft:entity.arrow.hit
