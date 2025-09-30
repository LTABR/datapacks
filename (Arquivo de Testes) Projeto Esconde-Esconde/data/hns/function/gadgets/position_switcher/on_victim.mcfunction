execute unless entity @e[type=block_display,tag=switch_position2] run summon block_display ~ ~ ~ {Tags:["switch_position2","positions"]}
execute rotated as @s positioned ^ ^ ^ run tp @e[type=block_display,tag=switch_position2] ^ ^ ^ ~ ~
tp @s @e[type=block_display,tag=switch_position,limit=1]
tp @a[tag=attacker] @e[type=block_display,tag=switch_position2,limit=1]
kill @e[type=block_display,tag=positions]
tag @a[tag=attacker] remove attacker

particle end_rod ~ ~1 ~ 0.0 0.5 0.0 0.1 100 normal
playsound minecraft:entity.player.teleport master @a ~ ~ ~ 1 2
stopsound @a[distance=..15] * minecraft:entity.player.hurt
stopsound @a[distance=..15] * minecraft:item.crossbow.hit
stopsound @a[distance=..15] * minecraft:entity.arrow.hit
