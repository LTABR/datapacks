# desativar caso a escala seja menor que 0.1
execute if score .crawling Opcoes matches 1 unless score .seekers_too_small Opcoes matches ..10 as @s[team=Procuradores] at @s run function hns:functions/crawling/loop with storage options seekers
execute if score .crawling Opcoes matches 1 unless score .hiders_too_small Opcoes matches ..10 as @s[team=Escondedores] at @s run function hns:functions/crawling/loop with storage options hiders

execute if score .elytra Opcoes matches 1 as @s[team=Escondedores] run function hns:loop/feather_elytra/replace_item with storage options hiders
execute if score .elytra Opcoes matches 1 as @s[team=Procuradores] run function hns:loop/feather_elytra/replace_item with storage options seekers

execute if score .elytra Opcoes matches 2 as @s[team=Procuradores] run function hns:loop/feather_elytra/replace_item with storage options seekers
execute if score .elytra Opcoes matches 3 as @s[team=Procuradores] run function hns:loop/feather_elytra/replace_item with storage options hiders

tag @s add feather
tag @s add using_feather

tag @s[tag=feather,scores={rabbit_jump=2..,rabbit_jump_cooldown=1..,normal_jump=1..}] add feather2
title @s[scores={rabbit_jump=0..2}] actionbar [{"score":{"name":"@s","objective":"rabbit_jump"},"color":"gold","bold":true,"underlined":true},{"text":" Cargas Usadas","underlined":false,"bold":false,"color":"white"}]

execute as @s[scores={normal_jump=1,rabbit_jump=1}] at @s run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1.25 2
execute as @s[scores={normal_jump=1,rabbit_jump=2}] at @s run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.5 1.5

execute unless score .elytra Opcoes matches 0 if entity @s[predicate=hns:is_flying] run function hns:loop/feather_elytra/on_flying_player

scoreboard players set @s[tag=feather,scores={normal_jump=1..},predicate=hns:holding_feather] rabbit_jump_cooldown 0
scoreboard players set @s[tag=feather,scores={rabbit_jump=3..}] rabbit_jump 2

schedule function hns:loop/feather_elytra/check_disable 1t append
execute unless score .rabbit_jump Opcoes matches 0 run function hns:loop/feather_elytra/call_cooldown_loop
execute if score .rabbit_jump Opcoes matches 0 run return 0

$execute if score .rabbit_jump Opcoes matches 1 run attribute @s[scores={rabbit_jump=0}] jump_strength base set $(rabbit_jump_strength1)
$execute if score .rabbit_jump Opcoes matches 1 run attribute @s[scores={rabbit_jump=1}] jump_strength base set $(rabbit_jump_strength2)
$execute if score .rabbit_jump Opcoes matches 1 run attribute @s[scores={rabbit_jump=2}] jump_strength base set $(rabbit_jump_strength3)
execute if score .rabbit_jump Opcoes matches 1 run return 0

$execute if score .rabbit_jump Opcoes matches 2 run attribute @s[team=Procuradores,scores={rabbit_jump=0}] jump_strength base set $(rabbit_jump_strength1)
$execute if score .rabbit_jump Opcoes matches 2 run attribute @s[team=Procuradores,scores={rabbit_jump=1}] jump_strength base set $(rabbit_jump_strength2)
$execute if score .rabbit_jump Opcoes matches 2 run attribute @s[team=Procuradores,scores={rabbit_jump=2}] jump_strength base set $(rabbit_jump_strength3)
execute if score .rabbit_jump Opcoes matches 2 run return 0

$execute if score .rabbit_jump Opcoes matches 3 run attribute @s[team=Escondedores,scores={rabbit_jump=0}] jump_strength base set $(rabbit_jump_strength1)
$execute if score .rabbit_jump Opcoes matches 3 run attribute @s[team=Escondedores,scores={rabbit_jump=1}] jump_strength base set $(rabbit_jump_strength2)
$execute if score .rabbit_jump Opcoes matches 3 run attribute @s[team=Escondedores,scores={rabbit_jump=2}] jump_strength base set $(rabbit_jump_strength3)
