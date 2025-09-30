execute as @a[team=Escondedores] run attribute @s minecraft:block_break_speed base set 0.5
execute if score .destructible_mode Opcoes matches 0 if score .mineable_blocks Opcoes matches 1 as @a[team=Procuradores] run attribute @s minecraft:block_break_speed base set 15
execute if score .destructible_mode Opcoes matches 1 as @a[team=Procuradores] run attribute @s minecraft:block_break_speed base set 1
$execute as @a[tag=!gliding_applied,tag=!trigger] run attribute @s minecraft:gravity base set $(gravity)
$execute as @a run attribute @s minecraft:safe_fall_distance base set $(safe_fall_distance)
$execute as @a run attribute @s minecraft:fall_damage_multiplier base set $(fall_damage_multiplier)
$execute unless score .absorption Opcoes matches 255 run effect give @s[team=Escondedores] minecraft:absorption infinite $(absorption) true
