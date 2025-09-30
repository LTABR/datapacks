summon cat ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Silent:1b,NoAI:1b,Sitting:1b,DeathLootTable:"hns:empty",Tags:["teleporter_portal"],active_effects:[{id:"minecraft:resistance",amplifier:255,duration:1999999980,show_particles:0b},{id:"minecraft:invisibility",amplifier:1b,duration:199999980,show_particles:0b}]}
data modify entity @e[type=cat,limit=1,sort=nearest,tag=teleporter_portal] Owner set from entity @p[scores={teleporter_portal=1..}] UUID

scoreboard players reset * teleporter_portal

kill @e[type=interaction,tag=spawn_teleporter]

summon minecraft:text_display ~ ~ ~ {billboard:"center",text:{"text":"Teleportador"},Tags:["portal_text"]}
summon item_display ~ ~1.4 ~ {billboard:"vertical",Tags:["teleportador"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,2.5f,1f]},item:{id:"minecraft:ender_pearl",count:1}}
summon minecraft:interaction ~ ~ ~ {Tags:["unset"]}

forceload add ~ ~

data merge entity @e[type=minecraft:item_display,limit=1,sort=nearest] {Tags:["teleportador"],item:{id:"minecraft:ender_pearl",count:1},transformation:{scale:[1.2,2.5,1.0]},billboard:"vertical"}
