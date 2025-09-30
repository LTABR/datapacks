execute unless entity @s[team=Procuradores] run advancement revoke @s only hns:using_third_eye
execute unless entity @s[team=Procuradores] run return 0
execute unless entity @s[predicate=hns:has_diamond] run advancement revoke @s only hns:using_third_eye
execute unless entity @s[predicate=hns:has_diamond] run return run tellraw @s {"text":"Você Não Possui Diamantes.","color":"red"}

scoreboard objectives add third_eye dummy

execute as @p[team=Procuradores] at @s store result score .seeker_x third_eye run data get entity @s Pos[0]
execute as @p[team=Procuradores] at @s store result score .seeker_y third_eye run data get entity @s Pos[1]
execute as @p[team=Procuradores] at @s store result score .seeker_z third_eye run data get entity @s Pos[2]
execute as @p[team=Escondedores] at @s store result score .hider_x third_eye run data get entity @s Pos[0]
execute as @p[team=Escondedores] at @s store result score .hider_y third_eye run data get entity @s Pos[1]
execute as @p[team=Escondedores] at @s store result score .hider_z third_eye run data get entity @s Pos[2]

execute store result storage third_eye location.x int 1.0 run scoreboard players get .seeker_x third_eye
execute store result storage third_eye location.y int 1.0 run scoreboard players get .seeker_y third_eye
execute store result storage third_eye location.z int 1.0 run scoreboard players get .seeker_z third_eye

scoreboard players set -1 third_eye -1
execute if score .hider_x third_eye matches ..-1 run scoreboard players operation .hider_x third_eye *= -1 third_eye
execute if score .hider_y third_eye matches ..-1 run scoreboard players operation .hider_y third_eye *= -1 third_eye
execute if score .hider_z third_eye matches ..-1 run scoreboard players operation .hider_z third_eye *= -1 third_eye
execute if score .seeker_x third_eye matches ..-1 run scoreboard players operation .seeker_x third_eye *= -1 third_eye
execute if score .seeker_y third_eye matches ..-1 run scoreboard players operation .seeker_y third_eye *= -1 third_eye
execute if score .seeker_z third_eye matches ..-1 run scoreboard players operation .seeker_z third_eye *= -1 third_eye

scoreboard players set .distance_x third_eye 0
scoreboard players set .distance_y third_eye 0
scoreboard players set .distance_z third_eye 0
scoreboard players set .total_distance third_eye 0

execute store success score .is_hider_higher third_eye run execute if score .hider_x third_eye > .seeker_x third_eye
execute if score .is_hider_higher third_eye matches 1 run scoreboard players operation .hider_x third_eye -= .seeker_x third_eye
execute if score .is_hider_higher third_eye matches 1 run scoreboard players operation .distance_x third_eye += .hider_x third_eye
execute if score .is_hider_higher third_eye matches 0 run scoreboard players operation .seeker_x third_eye -= .hider_x third_eye
execute if score .is_hider_higher third_eye matches 0 run scoreboard players operation .distance_x third_eye += .seeker_x third_eye

execute store success score .is_hider_higher third_eye run execute if score .hider_y third_eye > .seeker_y third_eye
execute if score .is_hider_higher third_eye matches 1 run scoreboard players operation .hider_y third_eye -= .seeker_y third_eye
execute if score .is_hider_higher third_eye matches 1 run scoreboard players operation .distance_y third_eye += .hider_y third_eye
execute if score .is_hider_higher third_eye matches 0 run scoreboard players operation .seeker_y third_eye -= .hider_y third_eye
execute if score .is_hider_higher third_eye matches 0 run scoreboard players operation .distance_y third_eye += .seeker_y third_eye

execute store success score .is_hider_higher third_eye run execute if score .hider_z third_eye > .seeker_z third_eye
execute if score .is_hider_higher third_eye matches 1 run scoreboard players operation .hider_z third_eye -= .seeker_z third_eye
execute if score .is_hider_higher third_eye matches 1 run scoreboard players operation .distance_z third_eye += .hider_z third_eye
execute if score .is_hider_higher third_eye matches 0 run scoreboard players operation .seeker_z third_eye -= .hider_z third_eye
execute if score .is_hider_higher third_eye matches 0 run scoreboard players operation .distance_z third_eye += .seeker_z third_eye

execute store result storage third_eye input.x float 1.0 run scoreboard players get .distance_x third_eye
execute store result storage third_eye input.y float 1.0 run scoreboard players get .distance_y third_eye
execute store result storage third_eye input.z float 1.0 run scoreboard players get .distance_z third_eye

execute as @p[team=Escondedores] at @s summon item_display as @s at @s run function hns:gadgets/third_eye/calculate_distance with storage third_eye input

execute store result score .total_distance third_eye run data get storage third_eye output 1.0

scoreboard objectives remove third_eye

advancement revoke @s only hns:using_third_eye
