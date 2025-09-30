execute as @a at @s run playsound minecraft:entity.villager.death player @s ~ ~ ~ 0.5 0
title @a title {"text":"Partida encerrada","color":"white","bold":true}
title @a subtitle {"text":"manualmente","color":"white","bold":true}

scoreboard players set .start Opcoes 0
function hns:functions/reset_match
