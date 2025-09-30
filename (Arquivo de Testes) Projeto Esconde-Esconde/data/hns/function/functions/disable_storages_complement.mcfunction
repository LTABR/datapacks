execute as @a[tag=teleport_back] at @s run tp @s ~ ~-499.5 ~
execute as @a[tag=teleport_back] at @s run tp @s ^ ^ ^ facing entity @e[type=marker,tag=behind,limit=1]
kill @e[tag=behind,type=marker]
tag @a[tag=teleport_back] remove teleport_back
