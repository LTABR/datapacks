execute as @e[type=minecraft:cat,tag=teleporter_portal] on owner run tellraw @s [{"text":"O Seu ","color":"red"},{"text":"Portal de Teleporte","color":"gold","bold":true,"underlined":true},{"text":" Foi Destruído Por Um ","color":"red"},{"text":" Procurador","color":"dark_red","italic":true,"bold":true,"underlined":true}]
execute as @e[type=minecraft:cat,tag=teleporter_portal] on owner run playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 1 1

data modify entity @e[type=minecraft:cat,limit=1,tag=teleporter_portal,sort=nearest] Owner set from entity @e[type=minecraft:cat,limit=1,tag=teleporter_portal,sort=nearest] UUID
kill @e[type=minecraft:cat,tag=teleporter_portal,sort=nearest,limit=1,distance=..10]
kill @e[type=minecraft:item_display,tag=teleportador,limit=1,sort=nearest,distance=..10]
kill @e[type=minecraft:text_display,tag=portal_text,limit=1,sort=nearest,distance=..10]
kill @e[type=minecraft:interaction,tag=unset,sort=nearest,limit=1,distance=..10]

forceload remove ~ ~

playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 1 0
