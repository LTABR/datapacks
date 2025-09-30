effect give @s[tag=trigger] minecraft:slowness 1 255 true
attribute @s[tag=trigger] minecraft:jump_strength base set 0
attribute @s[tag=trigger] gravity base set 1
execute as @s[tag=trigger] at @s run summon minecraft:armor_stand ~-0.25 ~ ~0.25 {Invisible: 1, Invulnerable: 1, Tags: ["placeholder"]}
execute as @s[tag=trigger] at @s run summon minecraft:armor_stand ~0.25 ~ ~0.25 {Invisible: 1, Invulnerable: 1, Tags: ["placeholder"]}
execute as @s[tag=trigger] at @s run summon minecraft:armor_stand ~-0.25 ~ ~-0.25 {Invisible: 1, Invulnerable: 1, Tags: ["placeholder"]}
execute as @s[tag=trigger] at @s run summon minecraft:armor_stand ~0.25 ~ ~-0.25 {Invisible: 1, Invulnerable: 1, Tags: ["placeholder"]}

execute as @s[tag=trigger] at @s run summon minecraft:block_display ~-0.7 ~-1 ~-0.65 {Tags:["block","block_ready"],block_state:{Name:"minecraft:sculk"}}
execute as @e[type=interaction,tag=exit] at @s run summon minecraft:block_display ~-0.7 ~-1 ~-0.65 {Tags:["block","block_ready"],block_state:{Name:"minecraft:sculk"}}
schedule function hns:gadgets/teleporter_plate/animations/animate_in 1t
