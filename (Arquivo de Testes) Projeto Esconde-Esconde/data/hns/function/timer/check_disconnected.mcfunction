# detect spectators & disconnected players
execute as @a[tag=!Admin] if entity @s[team=!Escondedores] if entity @s[team=!Procuradores] run gamemode spectator @s
execute as @a[team=Escondedores,scores={saiu=1..}] run gamemode spectator @s
execute as @a[gamemode=spectator,team=!Escondedores] run team join Escondedores @s
