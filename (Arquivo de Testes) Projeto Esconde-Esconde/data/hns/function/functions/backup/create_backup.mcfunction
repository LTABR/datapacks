$execute in $(dimension) run forceload add $(x1) $(z1) $(x2) $(z2)
$execute in hns:shop run forceload add 848 0 $(destination_border_x) $(destination_border_z)

gamerule commandModificationBlockLimit 999999999
$execute in hns:shop run fill 848 -64 0 $(destination_border_x) 319 $(destination_border_z) air
$execute in hns:shop run fill $(destination_border_x) -64 0 $(destination_border_x) 319 $(destination_border_z) bedrock
$execute in hns:shop run fill 848 -64 $(destination_border_z) $(destination_border_x) 319 $(destination_border_z) bedrock
$execute in $(dimension) run clone $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) to hns:shop 848 -64 0 strict
gamerule commandModificationBlockLimit 32768

$execute in $(dimension) run forceload remove $(x1) $(z1) $(x2) $(z2)
$execute in hns:shop run forceload remove 848 0 $(destination_border_x) $(destination_border_z)

scoreboard players set .backup Opcoes 1
tellraw @a {"text":"Backup Criado Com Sucesso!","color":"green"}
