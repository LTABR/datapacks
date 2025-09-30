execute at @e[type=minecraft:interaction,tag=teleporter_plate,sort=nearest,limit=1,distance=..10] run setblock ~ ~ ~ air destroy
kill @e[type=minecraft:interaction,tag=teleporter_plate,sort=nearest,limit=1,distance=..10]
kill @e[type=minecraft:block_display,limit=1,sort=nearest,tag=plate,distance=..10]
kill @e[type=minecraft:item_display,limit=1,sort=nearest,tag=plate2,distance=..10]
kill @e[type=minecraft:item_display,limit=1,sort=nearest,tag=plate3,distance=..10]
