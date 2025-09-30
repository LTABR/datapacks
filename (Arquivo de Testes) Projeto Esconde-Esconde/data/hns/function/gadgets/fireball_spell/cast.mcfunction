execute if entity @s[team=Escondedores] run summon minecraft:fireball ~ ~1 ~ {Tags:[apply_motion],ExplosionPower:5b,Item:{id:"minecraft:ender_eye"},NoGravity:1b}
execute if entity @s[team=Procuradores] run summon minecraft:fireball ~ ~1 ~ {Tags:[apply_motion],ExplosionPower:1b,Item:{id:"minecraft:ender_eye"},NoGravity:1b}

execute store result score .fireball_motion_x1 Opcoes run data get entity @e[type=minecraft:fireball,limit=1,tag=apply_motion] Pos[0] 1000
execute store result score .fireball_motion_y1 Opcoes run data get entity @e[type=minecraft:fireball,limit=1,tag=apply_motion] Pos[1] 1000
execute store result score .fireball_motion_z1 Opcoes run data get entity @e[type=minecraft:fireball,limit=1,tag=apply_motion] Pos[2] 1000

execute at @s as @e[type=minecraft:fireball,tag=apply_motion] at @s rotated as @p[advancements={hns:use_fireball_spell=true}] run tp ^ ^ ^0.1
execute store result score .fireball_motion_x2 Opcoes run data get entity @e[type=minecraft:fireball,limit=1,tag=apply_motion] Pos[0] 1000
execute store result score .fireball_motion_y2 Opcoes run data get entity @e[type=minecraft:fireball,limit=1,tag=apply_motion] Pos[1] 1000
execute store result score .fireball_motion_z2 Opcoes run data get entity @e[type=minecraft:fireball,limit=1,tag=apply_motion] Pos[2] 1000

scoreboard players set .-1 Opcoes 1
execute if score .fireball_motion_x1 Opcoes matches ..0 run scoreboard players operation .fireball_motion_x1 Opcoes *= .-1 Opcoes
execute if score .fireball_motion_y1 Opcoes matches ..0 run scoreboard players operation .fireball_motion_y1 Opcoes *= .-1 Opcoes
execute if score .fireball_motion_z1 Opcoes matches ..0 run scoreboard players operation .fireball_motion_z1 Opcoes *= .-1 Opcoes

execute if score .fireball_motion_x2 Opcoes matches ..0 run scoreboard players operation .fireball_motion_x2 Opcoes *= .-1 Opcoes
execute if score .fireball_motion_y2 Opcoes matches ..0 run scoreboard players operation .fireball_motion_y2 Opcoes *= .-1 Opcoes
execute if score .fireball_motion_z2 Opcoes matches ..0 run scoreboard players operation .fireball_motion_z2 Opcoes *= .-1 Opcoes
scoreboard players reset .-1 Opcoes

execute store result entity @e[type=minecraft:fireball,limit=1,tag=apply_motion] Motion[0] double 0.025 run scoreboard players operation .fireball_motion_x2 Opcoes -= .fireball_motion_x1 Opcoes
execute store result entity @e[type=minecraft:fireball,limit=1,tag=apply_motion] Motion[1] double 0.025 run scoreboard players operation .fireball_motion_y2 Opcoes -= .fireball_motion_y1 Opcoes
execute store result entity @e[type=minecraft:fireball,limit=1,tag=apply_motion] Motion[2] double 0.025 run scoreboard players operation .fireball_motion_z2 Opcoes -= .fireball_motion_z1 Opcoes

tag @e[type=minecraft:fireball,tag=apply_motion] add motion_applied
tag @e[type=minecraft:fireball,tag=motion_applied] remove apply_motion

scoreboard players reset .fireball_motion_x1 Opcoes
scoreboard players reset .fireball_motion_y1 Opcoes
scoreboard players reset .fireball_motion_z1 Opcoes

scoreboard players reset .fireball_motion_x2 Opcoes
scoreboard players reset .fireball_motion_y2 Opcoes
scoreboard players reset .fireball_motion_z2 Opcoes

playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 0.5 0.5

advancement revoke @s[advancements={hns:use_fireball_spell=true}] only hns:use_fireball_spell

execute if items entity @s weapon.mainhand minecraft:fire_charge run return run item replace entity @s weapon.mainhand with air
execute if items entity @s weapon.offhand minecraft:fire_charge run item replace entity @s weapon.offhand with air
