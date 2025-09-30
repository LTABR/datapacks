summon minecraft:text_display ^ ^ ^ {Tags:["wall_rotation"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:199999980,show_particles:0b}],NoAI:1,Silent:1}
execute anchored eyes run tp @e[type=minecraft:text_display,tag=wall_rotation,limit=1,sort=nearest,tag=!layer1,tag=!layer2,tag=!layer3,tag=!layer4,tag=!layer5] ^ ^0.035 ^-0.1 facing entity @s eyes
tp @e[type=minecraft:text_display,tag=wall_rotation,limit=1,sort=nearest,tag=!layer1,tag=!layer2,tag=!layer3,tag=!layer4,tag=!layer5] ~ ~3 ~
execute as @e[type=minecraft:text_display,tag=wall_rotation] run function hns:gadgets/icewall_spell/build_wall

# playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1.5 2

particle minecraft:item{item:{id:"minecraft:blue_ice"}} ~ ~0.5 ~ 0 0 0 0.25 100 force

schedule function hns:gadgets/icewall_spell/delay 2t replace
