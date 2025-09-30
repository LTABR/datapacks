$execute unless score .seekers_regeneration Opcoes matches 11 if score .fall_damage Opcoes matches 0 run effect give @s minecraft:regeneration infinite $(regeneration) true
$execute unless score .seekers_regeneration Opcoes matches 11 if score .fall_damage Opcoes matches 1 run effect give @s minecraft:regeneration infinite $(regeneration_fall_damage) true
attribute @s minecraft:attack_speed base set 40
$attribute @s minecraft:max_health base set $(health)
$attribute @s[tag=!used_surprise_cake] minecraft:attack_damage base set $(damage)
$attribute @s[tag=!consumed_wormhole_potion] minecraft:movement_speed base set 0.$(speed_string)
$attribute @s[tag=!trigger,tag=!used_surprise_cake,tag=!consumed_wormhole_potion] minecraft:jump_strength base set $(jump_strength)
$attribute @s minecraft:scale base set $(scale)
$attribute @s minecraft:entity_interaction_range base set $(range)
$attribute @s minecraft:block_interaction_range base set $(range)
$attribute @s minecraft:step_height base set $(step_height)

$execute as @e[type=shulker,tag=shulker_crawl,team=Procuradores] at @s unless entity @a[team=Procuradores,distance=..$(scale)] run function hns:functions/crawling/remove_shulker
