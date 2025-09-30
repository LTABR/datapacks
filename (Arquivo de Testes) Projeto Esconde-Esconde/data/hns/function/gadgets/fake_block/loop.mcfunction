execute if entity @a[team=Procuradores,distance=..7] run data merge entity @s {Glowing:true}
execute unless entity @a[team=Procuradores,distance=..7] run data merge entity @s {Glowing:false}
execute if entity @a[team=Procuradores,distance=..2] run kill @s
execute if entity @a[team=Procuradores,distance=..2] run playsound minecraft:entity.enderman.teleport block @a ~ ~ ~ 0.5 1.5
