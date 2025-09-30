summon minecraft:block_display ^ ^1 ^2 {Tags:["isAir"]}

execute as @a[scores={honey=1..}] at @s run summon block_display ^ ^1 ^2 {Tags:["isAir"]}
execute as @a[scores={honey=1..}] at @s run summon block_display ^ ^1 ^3 {Tags:["isAir"]}
execute as @a[scores={honey=1..}] at @s run summon block_display ^ ^1 ^4 {Tags:["isAir"]}
execute as @a[scores={honey=1..}] at @s run summon block_display ^ ^1 ^5 {Tags:["isAir"]}
execute as @a[scores={honey=1..}] at @s run summon block_display ^ ^1 ^6 {Tags:["isAir"]}
execute as @a[scores={honey=1..}] at @s run summon block_display ^ ^1 ^7 {Tags:["isAir"]}
execute as @a[scores={honey=1..}] at @s run summon block_display ^ ^1 ^8 {Tags:["isAir"]}

execute as @a[scores={honey=1..}] at @e[type=minecraft:block_display,tag=isAir,sort=furthest] if block ~ ~ ~ #hns:transparent_blocks run tp @s ~ ~ ~
execute as @a[scores={honey=1..}] at @s run scoreboard players set @s honey 0
kill @e[type=minecraft:block_display,tag=isAir]
