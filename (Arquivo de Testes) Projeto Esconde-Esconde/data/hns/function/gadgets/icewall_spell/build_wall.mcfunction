execute as @e[type=minecraft:text_display,tag=wall_rotation] run tag @s[tag=layer4] add layer5
execute as @e[type=minecraft:text_display,tag=wall_rotation] run tag @s[tag=layer5,tag=layer4] remove layer4
execute as @e[type=minecraft:text_display,tag=wall_rotation] run tag @s[tag=layer3] add layer4
execute as @e[type=minecraft:text_display,tag=wall_rotation] run tag @s[tag=layer4,tag=layer3] remove layer3
execute as @e[type=minecraft:text_display,tag=wall_rotation] run tag @s[tag=layer2] add layer3
execute as @e[type=minecraft:text_display,tag=wall_rotation] run tag @s[tag=layer3,tag=layer2] remove layer2
execute as @e[type=minecraft:text_display,tag=wall_rotation] run tag @s[tag=layer1] add layer2
execute as @e[type=minecraft:text_display,tag=wall_rotation] run tag @s[tag=layer2,tag=layer1] remove layer1
execute as @e[type=minecraft:text_display,tag=wall_rotation] run tag @s[tag=!layer1,tag=!layer2,tag=!layer3,tag=!layer4,tag=!layer5] add layer1

execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer1] rotated as @s anchored feet positioned ^-5 ^-1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer1] rotated as @s anchored feet positioned ^-4 ^-1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer1] rotated as @s anchored feet positioned ^-3 ^-1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer1] rotated as @s anchored feet positioned ^-2 ^-1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer1] rotated as @s anchored feet positioned ^-1 ^-1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer1] rotated as @s anchored feet positioned ^ ^-1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer1] rotated as @s anchored feet positioned ^1 ^-1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer1] rotated as @s anchored feet positioned ^2 ^-1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer1] rotated as @s anchored feet positioned ^3 ^-1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer1] rotated as @s anchored feet positioned ^4 ^-1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer1] rotated as @s anchored feet positioned ^5 ^-1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice

execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer2] rotated as @s anchored feet positioned ^-5 ^ ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer2] rotated as @s anchored feet positioned ^-4 ^ ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer2] rotated as @s anchored feet positioned ^-3 ^ ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer2] rotated as @s anchored feet positioned ^-2 ^ ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer2] rotated as @s anchored feet positioned ^-1 ^ ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer2] rotated as @s anchored feet positioned ^ ^ ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer2] rotated as @s anchored feet positioned ^1 ^ ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer2] rotated as @s anchored feet positioned ^2 ^ ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer2] rotated as @s anchored feet positioned ^3 ^ ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer2] rotated as @s anchored feet positioned ^4 ^ ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer2] rotated as @s anchored feet positioned ^5 ^ ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice

execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer3] rotated as @s anchored feet positioned ^-5 ^1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer3] rotated as @s anchored feet positioned ^-4 ^1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer3] rotated as @s anchored feet positioned ^-3 ^1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer3] rotated as @s anchored feet positioned ^-2 ^1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer3] rotated as @s anchored feet positioned ^-1 ^1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer3] rotated as @s anchored feet positioned ^ ^1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer3] rotated as @s anchored feet positioned ^1 ^1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer3] rotated as @s anchored feet positioned ^2 ^1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer3] rotated as @s anchored feet positioned ^3 ^1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer3] rotated as @s anchored feet positioned ^4 ^1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer3] rotated as @s anchored feet positioned ^5 ^1 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_ice

execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer4] rotated as @s anchored feet positioned ^-5 ^2 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer4] rotated as @s anchored feet positioned ^-4 ^2 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer4] rotated as @s anchored feet positioned ^-3 ^2 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer4] rotated as @s anchored feet positioned ^-2 ^2 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer4] rotated as @s anchored feet positioned ^-1 ^2 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer4] rotated as @s anchored feet positioned ^ ^2 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer4] rotated as @s anchored feet positioned ^1 ^2 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer4] rotated as @s anchored feet positioned ^2 ^2 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer4] rotated as @s anchored feet positioned ^3 ^2 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer4] rotated as @s anchored feet positioned ^4 ^2 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow
execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer4] rotated as @s anchored feet positioned ^5 ^2 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow


execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer5] rotated as @s anchored feet positioned ^-4 ^3 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow

execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer5] rotated as @s anchored feet positioned ^-2 ^3 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow

execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer5] rotated as @s anchored feet positioned ^ ^3 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow

execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer5] rotated as @s anchored feet positioned ^2 ^3 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow

execute as @e[type=minecraft:text_display,tag=wall_rotation] at @s[tag=layer5] rotated as @s anchored feet positioned ^4 ^3 ^5 if block ~ ~ ~ #hns:intangible_blocks_and_air run function hns:gadgets/icewall_spell/build_snow

execute at @e[type=minecraft:text_display,tag=wall_rotation] run playsound minecraft:entity.player.hurt_freeze player @a ^ ^ ^5 1 0
kill @e[type=minecraft:text_display,tag=wall_rotation,tag=layer5]

execute if entity @e[type=minecraft:text_display,tag=wall_rotation] run schedule function hns:gadgets/icewall_spell/build_wall 1t replace
