execute store result score .seekers_scale Opcoes store result score .seekers_crouch_height Opcoes run data get storage minecraft:options seekers.scale 100.0
execute store result score .hiders_scale Opcoes store result score .hiders_crouch_height Opcoes run data get storage minecraft:options hiders.scale 100.0

scoreboard players set .2 Opcoes 2
scoreboard players set .100 Opcoes 100
execute store result score .seekers_bonus_height Opcoes run data get storage options seekers.scale 10
execute store result score .hiders_bonus_height Opcoes run data get storage options hiders.scale 10

scoreboard players operation .seekers_bonus_height Opcoes *= .2 Opcoes
scoreboard players operation .hiders_bonus_height Opcoes *= .2 Opcoes
execute store result storage options seekers.half_scale double 0.01 run scoreboard players operation .seekers_crouch_height Opcoes /= .2 Opcoes
execute store result storage options hiders.half_scale double 0.01 run scoreboard players operation .hiders_crouch_height Opcoes /= .2 Opcoes
execute store result storage options seekers.crouch_height double 0.01 run scoreboard players operation .seekers_crouch_height Opcoes += .seekers_bonus_height Opcoes
execute store result storage options hiders.crouch_height double 0.01 run scoreboard players operation .hiders_crouch_height Opcoes += .hiders_bonus_height Opcoes
scoreboard players reset .2 Opcoes

execute store result score .seekers_speed_penalty Opcoes run data get storage options seekers.scale 100.0
execute store result score .hiders_speed_penalty Opcoes run data get storage options hiders.scale 100.0
execute if score .seekers_speed_penalty Opcoes matches ..99 store result storage options seekers.speed_penalty double 0.01 run scoreboard players operation .100 Opcoes -= .seekers_speed_penalty Opcoes
execute if score .hiders_speed_penalty Opcoes matches ..99 store result storage options hiders.speed_penalty double 0.01 run scoreboard players operation .100 Opcoes -= .hiders_speed_penalty Opcoes
execute if score .seekers_speed_penalty Opcoes matches 100.. run data merge storage options {seekers:{speed_penalty:0}}
execute if score .hiders_speed_penalty Opcoes matches 100.. run data merge storage options {hiders:{speed_penalty:0}}

execute store result score .seekers_half_scale Opcoes run data get storage options seekers.half_scale 100
execute store result score .hiders_half_scale Opcoes run data get storage options hiders.half_scale 100

scoreboard players reset .100 Opcoes
scoreboard players reset .seekers_crouch_height Opcoes
scoreboard players reset .hiders_crouch_height Opcoes
scoreboard players reset .seekers_bonus_height Opcoes
scoreboard players reset .hiders_bonus_height Opcoes
scoreboard players reset .seekers_scale Opcoes
scoreboard players reset .hiders_scale Opcoes
scoreboard players reset .seekers_half_scale Opcoes
scoreboard players reset .hiders_half_scale Opcoes
scoreboard players reset .seekers_speed_penalty Opcoes
scoreboard players reset .hiders_speed_penalty Opcoes
