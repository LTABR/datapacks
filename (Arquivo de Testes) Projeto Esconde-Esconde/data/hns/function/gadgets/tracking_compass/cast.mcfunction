execute as @p[team=Escondedores] store result storage tracking_compass coords.x int 1.0 run data get entity @s Pos[0]
execute as @p[team=Escondedores] store result storage tracking_compass coords.y int 1.0 run data get entity @s Pos[1]
execute as @p[team=Escondedores] store result storage tracking_compass coords.z int 1.0 run data get entity @s Pos[2]
data modify storage tracking_compass coords.dimension set from entity @p[team=Escondedores] Dimension

execute store result storage tracking_compass coords.minutes int 1.0 run scoreboard players get .Minutos Cronometro
execute store result storage tracking_compass coords.seconds int 1.0 run scoreboard players get .Segundos Cronometro

function hns:gadgets/tracking_compass/give_compass with storage tracking_compass coords

tellraw @p[team=Escondedores] {"text":"Um Procurador Usou Uma Bússola Para Sua Localização Atual...","color":"red"}
execute as @p[team=Escondedores] at @s run playsound minecraft:ui.loom.select_pattern player @s ~ ~ ~ 100 2

data remove storage tracking_compass coords

advancement revoke @s[advancements={hns:use_tracking_compass=true}] only hns:use_tracking_compass
recipe take @s hns:tracking_compass
