execute as @e[type=minecraft:firework_rocket] at @s on origin if entity @s[team=Escondedores] run playsound minecraft:entity.firework_rocket.blast_far ambient @a ~ ~ ~ 3 1

execute store result storage firework RGB.R double 0.001 run random value 0..999
execute store result storage firework RGB.G double 0.001 run random value 0..999
execute store result storage firework RGB.B double 0.001 run random value 0..999

function hns:loop/firework_spark_flash with storage firework RGB

execute as @e[type=minecraft:firework_rocket] at @s on origin if entity @s[team=Escondedores] run particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0.1 25 force

schedule function hns:loop/firework_spark 4t
