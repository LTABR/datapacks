execute in hns:shop as @p[tag=at_shop] at @s run execute at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run summon arrow ~7 ~11 ~ {Motion:[2.3906,-1.8548,-0.0]}
execute in hns:shop as @p[tag=at_shop] at @s run execute at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run data merge block ~20 ~ ~ {item:{id:"minecraft:emerald",count:1b}}
execute store result storage minecraft:shop_dimension player.emeralds int 1.0 run scoreboard players get @p[tag=at_shop] esmeraldas_placeholder
execute in hns:shop as @p[tag=at_shop] at @s run execute at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run data modify block ~20 ~ ~ item.count set from storage shop_dimension player.emeralds

scoreboard players operation @p[tag=at_shop] esmeraldas += @p[tag=at_shop] esmeraldas_placeholder
scoreboard players operation @p[tag=at_shop] pontosTotais -= @p[tag=at_shop] pontosTotais_placeholder

scoreboard players reset @p[tag=at_shop] esmeraldas_placeholder
scoreboard players reset @p[tag=at_shop] pontosTotais_placeholder

schedule function hns:shop_dimension/animations/conversion_menu/confirm_animation 10t append
