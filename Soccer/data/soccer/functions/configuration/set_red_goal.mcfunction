scoreboard players add .red_goal_side options 1

execute if score .red_goal_side options matches 1 summon minecraft:block_display store result score .red_goal_side1 x_axis run data get entity @s Pos[0]
execute if score .red_goal_side options matches 1 summon minecraft:block_display store result score .red_goal_side1 z_axis run data get entity @s Pos[2]
execute if score .red_goal_side options matches 1 run tellraw @a[team=admin] [{"text":"Primeiro ponto da entrada do gol ","color":"white"},{"text":"Vermelho","color":"red","bold":true,"underlined":true},{"text":" definida.","bold":false,"underlined":false}]

execute if score .red_goal_side options matches 2 summon minecraft:block_display store result score .red_goal_side2 x_axis run data get entity @s Pos[0]
execute if score .red_goal_side options matches 2 summon minecraft:block_display store result score .red_goal_side2 z_axis run data get entity @s Pos[2]

kill @e[type=block_display,limit=2,sort=nearest]
setblock ~ ~ ~ air

execute unless score .red_goal_side2 x_axis = .red_goal_side1 x_axis unless score .red_goal_side2 z_axis = .red_goal_side1 z_axis if score .red_goal_side options matches 2 run tellraw @a[team=admin] {"text":"A entrada do gol deve ser uma linha reta!", "color":"red"}
execute unless score .red_goal_side2 x_axis = .red_goal_side1 x_axis unless score .red_goal_side2 z_axis = .red_goal_side1 z_axis if score .red_goal_side options matches 2 run function soccer:configuration/reset_red_goal_scores

execute if score .red_goal_side options matches 2 if score .larger_blue_goal_side z_axis matches 0.. if score .blue_goal_side1 x_axis = .blue_goal_side2 x_axis unless score .red_goal_side1 x_axis = .red_goal_side2 x_axis run tellraw @a[team=admin] {"text":"Os gols devem ser perpendiculares ao mesmo eixo! (um em frente ao outro)", "color":"red"}
execute if score .red_goal_side options matches 2 if score .larger_blue_goal_side z_axis matches 0.. if score .blue_goal_side1 x_axis = .blue_goal_side2 x_axis unless score .red_goal_side1 x_axis = .red_goal_side2 x_axis run function soccer:configuration/reset_red_goal_scores

execute if score .red_goal_side options matches 2 if score .larger_blue_goal_side z_axis matches 0.. unless score .blue_goal_side1 x_axis = .blue_goal_side2 x_axis if score .red_goal_side1 x_axis = .red_goal_side2 x_axis run tellraw @a[team=admin] {"text":"Os gols devem ser perpendiculares ao mesmo eixo! (um em frente ao outro)", "color":"red"}
execute if score .red_goal_side options matches 2 if score .larger_blue_goal_side z_axis matches 0.. unless score .blue_goal_side1 x_axis = .blue_goal_side2 x_axis if score .red_goal_side1 x_axis = .red_goal_side2 x_axis run function soccer:configuration/reset_red_goal_scores

execute if score .red_goal_side1 x_axis > .red_goal_side2 x_axis run scoreboard players set .larger_red_goal_side x_axis 1
execute if score .red_goal_side1 z_axis > .red_goal_side2 z_axis run scoreboard players set .larger_red_goal_side z_axis 1
execute if score .red_goal_side2 x_axis > .red_goal_side1 x_axis run scoreboard players set .larger_red_goal_side x_axis 2
execute if score .red_goal_side2 z_axis > .red_goal_side1 z_axis run scoreboard players set .larger_red_goal_side z_axis 2
execute if score .red_goal_side2 x_axis = .red_goal_side1 x_axis run scoreboard players set .larger_red_goal_side x_axis 0
execute if score .red_goal_side2 z_axis = .red_goal_side1 z_axis run scoreboard players set .larger_red_goal_side z_axis 0

execute if score .red_goal_side options matches 3 run function soccer:configuration/reset_red_goal_scores

execute if score .red_goal_side1 x_axis = .red_goal_side2 x_axis run scoreboard players set .field_axis options 0
execute if score .red_goal_side1 z_axis = .red_goal_side2 z_axis run scoreboard players set .field_axis options 2

execute if score .larger_red_goal_side z_axis matches 0.. if score .red_goal_side options matches 2 run tellraw @a[team=admin] [{"text":"A entrada do gol ","color":"green"},{"text":"Vermelho","color":"red","bold":true,"underlined":true},{"text":" foi definida com sucesso.","bold":false,"underlined":false}]
execute if score .larger_red_goal_side z_axis matches 0.. if score .red_goal_side options matches 2 run clear @a[team=admin] command_block
execute if score .larger_red_goal_side z_axis matches 0.. if score .red_goal_side options matches 2 as @a[team=admin] run function soccer:setup/setup
execute if score .larger_red_goal_side z_axis matches 0.. if score .red_goal_side options matches 2 run summon cat ~ ~1 ~ {Silent:1b,HurtTime:1,DeathLootTable:"hns:empty",Health:99999f,Tags:["ball"],Passengers:[{id:"minecraft:item_display",Tags:["ball"],transformation:{translation:[0f,0.25f,0f]},item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I; -1570091303, 2082882688, -1252986980, 235073443],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGU0YTcwYjdiYmNkN2E4YzMyMmQ1MjI1MjA0OTFhMjdlYTZiODNkNjBlY2Y5NjFkMmI0ZWZiYmY5ZjYwNWQifX19"}]}}}}},{id:"minecraft:interaction",width:1f,height:0.5f,Tags:["kick"]}],CustomName:'{"text":"ball"}',ActiveEffects:[{Id:14,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:99999999},{Name:generic.movement_speed,Base:0},{Name:generic.attack_damage,Base:0}]}
execute if score .larger_red_goal_side z_axis matches 0.. if score .red_goal_side options matches 2 run execute store result entity @e[type=minecraft:cat,limit=1,tag=ball] Pos[0] double 0.0010012 run scoreboard players get .center x_axis
execute if score .larger_red_goal_side z_axis matches 0.. if score .red_goal_side options matches 2 run execute store result entity @e[type=minecraft:cat,limit=1,tag=ball] Pos[2] double 0.0009967 run scoreboard players get .center z_axis
execute if score .red_goal_side options matches 2.. run scoreboard players set .red_goal_side options 0

