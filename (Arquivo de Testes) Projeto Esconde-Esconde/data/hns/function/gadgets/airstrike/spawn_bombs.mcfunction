execute as @e[type=minecraft:firework_rocket] if data entity @s FireworksItem.components.minecraft:custom_data.airstrike if data entity @s {Life:10} at @s run summon tnt ~ ~ ~ {explosion_power: 4, fuse:86,block_state:{Name:"minecraft:target"},Motion:[0.0,0.5,0.0]}
execute as @e[type=minecraft:firework_rocket] if data entity @s FireworksItem.components.minecraft:custom_data.airstrike if data entity @s {Life:17} at @s run summon tnt ~ ~ ~ {explosion_power: 4, fuse:76,block_state:{Name:"minecraft:target"},Motion:[0.0,0.5,0.0]}
execute as @e[type=minecraft:firework_rocket] if data entity @s FireworksItem.components.minecraft:custom_data.airstrike if data entity @s {Life:24} at @s run summon tnt ~ ~ ~ {explosion_power: 4, fuse:66,block_state:{Name:"minecraft:target"},Motion:[0.0,0.5,0.0]}

execute as @e[type=minecraft:firework_rocket] if data entity @s FireworksItem.components.minecraft:custom_data.airstrike run schedule function hns:gadgets/airstrike/spawn_bombs 7t append
