scoreboard players add @a[advancements={hns:use_shulker_platform=true}] shulker_platform 1
execute as @a[advancements={hns:use_shulker_platform=true},scores={shulker_platform=5..}] run function hns:gadgets/shulker_platform/reset_cooldown

execute as @e[type=minecraft:area_effect_cloud,tag=platform,predicate=hns:kill_platform] at @s run tp ~ -500 ~
execute as @e[type=minecraft:area_effect_cloud,tag=platform,predicate=hns:kill_platform] on passengers run kill @s
kill @e[type=minecraft:area_effect_cloud,tag=platform,predicate=hns:kill_platform]

execute if entity @e[type=minecraft:area_effect_cloud,tag=platform] run schedule function hns:gadgets/shulker_platform/loop 1t
