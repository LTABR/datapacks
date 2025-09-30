execute unless score .backup Opcoes matches 1 run return run tellraw @a[tag=Admin] {"text":"Não Há Backup Salvo.","color":"red"}

execute if score .backup Opcoes matches 1 run tellraw @a {"text":"Carregando Backup na Barreira Atual...","color":"yellow"}

$execute in $(dimension) run forceload add $(x1) $(z1) $(x2) $(z2)
$execute in hns:shop run forceload add 848 0 $(destination_border_x) $(destination_border_z)

gamerule commandModificationBlockLimit 999999999
$execute in hns:shop run clone 848 -64 0 $(destination_x) 319 $(destination_z) to $(dimension) $(x1) $(y2) $(z1) strict
$execute in hns:shop run fill 848 -64 0 $(destination_border_x) 319 $(destination_border_z) air
gamerule commandModificationBlockLimit 32768

$execute in $(dimension) run forceload remove $(x1) $(z1) $(x2) $(z2)
$execute in hns:shop run forceload remove 848 0 $(destination_border_x) $(destination_border_z)

tellraw @a {"text":"Backup Carregado Com Sucesso!","color":"green"}

scoreboard players set .backup Opcoes 0
