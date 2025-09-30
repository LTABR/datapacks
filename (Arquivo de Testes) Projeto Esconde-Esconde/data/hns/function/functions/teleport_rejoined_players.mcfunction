execute in hns:shop positioned 397 66 397 if loaded ~ ~ ~ if block ~ ~ ~ air run place template hns:lobby ~ ~ ~ none
execute in hns:shop run worldborder damage amount 0
execute in hns:shop run worldborder damage buffer 0
execute as @a[scores={saiu=1..}] in hns:shop run tp -100 0 0
execute as @a[scores={saiu=1..},tag=!Admin] run gamemode adventure @s
execute if score .destrutible_mode Opcoes matches 1 as @a[scores={saiu=1..}] run gamemode survival @s
scoreboard players reset @a[scores={saiu=1..}] saiu
