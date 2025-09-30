execute as @a[team=Procuradores] if score @s player_ids = @e[tag=alarm_trap,type=block_display,distance=..3,limit=1,sort=nearest] alarm_trap run tellraw @s {"text": "Um Escondedor Entrou em Uma Armadilha de Alarme Sua!","color": "red","underlined": true,"bold": true}
tag @p[team=Escondedores] add caught
tellraw @p[team=Escondedores] {"text":"Você Entrou em Uma Armadilha de Alarme!","color": "dark_red","bold": true,"underlined": true}
execute as @p[team=Escondedores] at @s run kill @e[tag=alarm_trap,type=block_display,limit=1,sort=nearest]
execute as @p[team=Escondedores] at @s run kill @e[tag=alarm_trap,type=text_display,limit=1,sort=nearest]
