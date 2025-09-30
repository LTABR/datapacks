# NAO UTILIZANDO

kill @e[type=mannequin,tag=doll]

execute unless items entity @s saddle * run item replace entity @s saddle with minecraft:debug_stick[equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]
execute if items entity @s saddle * run item modify entity @s saddle hns:set_player_name

data modify storage options mannequin.playername set string entity @s equipment.saddle.components.minecraft:item_name.click_event.command 6 -1

function hns:teste3 with storage options mannequin

data modify entity @e[type=mannequin,tag=doll,limit=1,sort=nearest] Rotation set from entity @s Rotation

gamemode spectator @s

execute if entity @s[gamemode=spectator] run spectate @e[type=mannequin,tag=doll,limit=1,sort=nearest]
