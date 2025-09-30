execute as @s[tag=Admin] at @s unless blocks ~ ~1 ~ ~ ~22 ~ ~ ~ ~ masked run return run tellraw @s {"text":"Local Inválido. Tente Novamente em um Local Mais Aberto.","color":"red"}

execute if entity @e[type=minecraft:villager,tag=exemplo_procurador,limit=1] run tellraw @s[tag=Admin] {"text":"Uma Configuração Já Foi Invocada Anteriormente. Tente Novamente.","color":"red"}
$execute if entity @e[type=minecraft:villager,tag=exemplo_procurador,limit=1] in $(dimension) run fill $(1ax) $(1ay) $(1az) $(1ax) $(1ay) $(1az) air replace red_shulker_box
execute as @e[type=minecraft:villager,tag=exemplo_procurador,limit=1] if entity @s run kill @s
execute as @e[type=minecraft:villager,tag=exemplo_escondedor,limit=1] if entity @s run return run kill @s

execute as @s[tag=Admin] at @s if blocks ~ ~1 ~ ~ ~22 ~ ~ ~ ~ masked unless entity @e[type=minecraft:block_display,tag=container] run forceload add ~ ~ ~ ~
execute as @a[tag=Admin] at @s if blocks ~ ~1 ~ ~ ~22 ~ ~ ~ ~ masked unless entity @e[type=minecraft:block_display,tag=container] run tp ~ ~22 ~
schedule function hns:setup/destructible_mode_shop/call_at_player 1t
tag @s add awaiting
