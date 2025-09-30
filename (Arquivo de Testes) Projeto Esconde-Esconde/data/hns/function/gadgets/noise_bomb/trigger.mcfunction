execute as @p[team=Escondedores] at @s run playsound minecraft:entity.zombie_villager.cure player @a[team=Escondedores] ~ ~ ~ 0.4 0
execute as @p[team=Escondedores] at @s run tellraw @s [{"text":"Uma "},{"text":"Bomba de Ruído","color":"red","underlined": true},{"text":" Foi Utilizada em Você..."}]
execute as @p[team=Escondedores] at @s run playsound minecraft:entity.zombie_villager.cure player @a[team=Procuradores] ~ ~ ~ 3.5 0

advancement revoke @s only hns:using_noise_bomb

execute if items entity @s weapon.mainhand minecraft:magma_cream run return run item replace entity @s weapon.mainhand with air
execute if items entity @s weapon.offhand minecraft:magma_cream run item replace entity @s weapon.offhand with air
