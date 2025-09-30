execute as @a[tag=awaiting] at @s unless entity @e[type=minecraft:block_display,tag=container] run function hns:setup/shop/at_player with storage minecraft:ingame_shop placements
tag @a[tag=awaiting] remove awaiting
