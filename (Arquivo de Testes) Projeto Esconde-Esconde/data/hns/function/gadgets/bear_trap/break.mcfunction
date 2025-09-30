execute as @e[type=interaction,tag=bear_trap] at @s on attacker if entity @s[team=Procuradores] run setblock ~ ~ ~ air destroy
execute as @e[type=interaction,tag=bear_trap] at @s on attacker if entity @s[team=Procuradores] run kill @e[type=interaction,distance=..5,tag=bear_trap,limit=1,sort=nearest]
