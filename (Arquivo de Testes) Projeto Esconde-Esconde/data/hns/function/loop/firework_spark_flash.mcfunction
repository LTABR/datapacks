$execute as @e[type=minecraft:firework_rocket] at @s on origin if entity @s[team=Escondedores] run particle minecraft:flash{color:[0.$(R),0.$(G),0.$(B),1.0]} ~ ~ ~ 0.5 0.5 0.5 1 1 force

data remove storage firework RGB
