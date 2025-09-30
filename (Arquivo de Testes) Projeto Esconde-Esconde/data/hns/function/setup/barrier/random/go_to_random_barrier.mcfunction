$execute as @a[tag=Admin] at @s in hns:caveworld run tp @s $(x) ~ $(z)
gamemode spectator @a[tag=Admin]
gamerule spectatorsGenerateChunks true

execute as @a[tag=Admin] at @s run function hns:setup/barrier/setup with storage minecraft:border_saves current_border
$execute in hns:caveworld positioned $(x) ~ $(z) positioned over world_surface run tp @a[tag=!Admin] 
$execute rotated as @p[tag=Admin,scores={place_command_block=1..}] in hns:caveworld positioned $(x) ~ $(z) positioned over world_surface run setworldspawn ~ ~ ~ ~ 0

scoreboard players reset * place_command_block

tellraw @a[tag=Admin] {"text":" "}
tellraw @a[tag=Admin] {"bold":true,"click_event":{"action":"run_command","command":"/function hns:setup/barrier/random/interface/show_menu"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Configurar Geração de Estruturas Aleatórias","color":"gold"}]},"text":"Configurar Geração de Estruturas Aleatórias","underlined":true}
