tag @s add apply_raycast

summon text_display ^ ^ ^0.1 {Tags:["isValid"]}
summon text_display ^ ^ ^0.2 {Tags:["isValid"]}
summon text_display ^ ^ ^0.3 {Tags:["isValid"]}
summon text_display ^ ^ ^0.4 {Tags:["isValid"]}
summon text_display ^ ^ ^0.5 {Tags:["isValid"]}
summon text_display ^ ^ ^0.6 {Tags:["isValid"]}
summon text_display ^ ^ ^0.7 {Tags:["isValid"]}
summon text_display ^ ^ ^0.8 {Tags:["isValid"]}
summon text_display ^ ^ ^0.9 {Tags:["isValid"]}
summon text_display ^ ^ ^1 {Tags:["isValid"]}
summon text_display ^ ^ ^1.1 {Tags:["isValid"]}
summon text_display ^ ^ ^1.2 {Tags:["isValid"]}
summon text_display ^ ^ ^1.3 {Tags:["isValid"]}
summon text_display ^ ^ ^1.4 {Tags:["isValid"]}
summon text_display ^ ^ ^1.5 {Tags:["isValid"]}
summon text_display ^ ^ ^1.6 {Tags:["isValid"]}
summon text_display ^ ^ ^1.7 {Tags:["isValid"]}
summon text_display ^ ^ ^1.8 {Tags:["isValid"]}
summon text_display ^ ^ ^1.9 {Tags:["isValid"]}
summon text_display ^ ^ ^2 {Tags:["isValid"]}
summon text_display ^ ^ ^2.1 {Tags:["isValid"]}
summon text_display ^ ^ ^2.2 {Tags:["isValid"]}
summon text_display ^ ^ ^2.3 {Tags:["isValid"]}
summon text_display ^ ^ ^2.4 {Tags:["isValid"]}
summon text_display ^ ^ ^2.5 {Tags:["isValid"]}
summon text_display ^ ^ ^2.6 {Tags:["isValid"]}
summon text_display ^ ^ ^2.7 {Tags:["isValid"]}
summon text_display ^ ^ ^2.8 {Tags:["isValid"]}
summon text_display ^ ^ ^2.9 {Tags:["isValid"]}
summon text_display ^ ^ ^3 {Tags:["isValid"]}
summon text_display ^ ^ ^3.1 {Tags:["isValid"]}
summon text_display ^ ^ ^3.2 {Tags:["isValid"]}
summon text_display ^ ^ ^3.3 {Tags:["isValid"]}
summon text_display ^ ^ ^3.4 {Tags:["isValid"]}
summon text_display ^ ^ ^3.5 {Tags:["isValid"]}
summon text_display ^ ^ ^3.6 {Tags:["isValid"]}
summon text_display ^ ^ ^3.7 {Tags:["isValid"]}
summon text_display ^ ^ ^3.8 {Tags:["isValid"]}
summon text_display ^ ^ ^3.9 {Tags:["isValid"]}
summon text_display ^ ^ ^4 {Tags:["isValid"]}
summon text_display ^ ^ ^4.1 {Tags:["isValid"]}
summon text_display ^ ^ ^4.2 {Tags:["isValid"]}
summon text_display ^ ^ ^4.3 {Tags:["isValid"]}
summon text_display ^ ^ ^4.4 {Tags:["isValid"]}
summon text_display ^ ^ ^4.5 {Tags:["isValid"]}

execute as @e[tag=isValid,sort=nearest] at @s unless block ~ ~ ~ air run tag @s add first_block
kill @e[tag=isValid,tag=!first_block]

# execute if entity @e[tag=first_block] run say encontrado!
execute as @e[tag=first_block] at @s run setblock ~ ~ ~ sponge
kill @e[tag=first_block]
