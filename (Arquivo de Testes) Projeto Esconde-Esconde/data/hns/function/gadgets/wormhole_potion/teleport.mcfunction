playsound minecraft:block.bell.resonate master @a ~ ~ ~ 2 2
playsound minecraft:entity.player.teleport master @a ~ ~ ~ 2 2
particle minecraft:portal ~ ~ ~ 0.1 0.7 0.1 2 1000 normal

$tp @s @p[scores={player_ids=$(target_id)}]
$execute as @p[scores={player_ids=$(target_id)}] at @s run particle minecraft:reverse_portal ~ ~ ~ 0.1 0.7 0.1 2 1000 normal
$execute as @p[scores={player_ids=$(target_id)}] at @s run playsound minecraft:block.portal.travel master @a[team=Procuradores] ~ ~ ~ 0.07 2
$execute as @p[scores={player_ids=$(target_id)}] at @s run playsound minecraft:block.portal.travel master @a[team=Escondedores] ~ ~ ~ 1 2
tag @s remove consumed_wormhole_potion

data remove storage wormhole_potion target_id

scoreboard players reset @s wormhole_potion
