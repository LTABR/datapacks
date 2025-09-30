particle minecraft:dripping_dripstone_lava ~ ~ ~ 0.5 0 0.5 0.1 100 force
execute if score .head_drops Opcoes matches 1 unless entity @a[tag=dead_hider] as @a[scores={Mortes=1..}] run loot spawn ~ ~ ~ loot hns:entities/player
execute if score .head_drops Opcoes matches 1 as @a[tag=dead_hider] run loot spawn ~ ~ ~ loot hns:entities/player
