execute if score .sempvp Opcoes matches 0 if entity @s[type=player] run scoreboard players set .sempvp Opcoes 1
execute if score .sempvp Opcoes matches 1 as @a[team=!moderador] run attribute @s minecraft:attack_damage base set 0
execute if score .sempvp Opcoes matches 1 run schedule function hns:loop/pvp/disable_pvp_loop 1s
