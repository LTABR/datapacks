$execute as @e[type=minecraft:mannequin,tag=doll] if data entity @s {profile:{name:"$(playername)"}} at @s run tp $(playername) @s
$execute as @e[type=minecraft:mannequin,tag=doll] if data entity @s {profile:{name:"$(playername)"}} at @s run tp ~ -1000 ~
$execute as @e[type=minecraft:mannequin,tag=doll] if data entity @s {profile:{name:"$(playername)"}} run kill @s