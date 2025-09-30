execute on attacker if entity @s[type=player,team=Procuradores] as @a[team=Escondedores,advancements={hns:using_pointer_spyglass=true}] if items entity @s weapon.mainhand minecraft:spyglass[minecraft:custom_data={pointer:1b}] run item replace entity @s weapon.mainhand with air
execute on attacker if entity @s[type=player,team=Procuradores] as @a[team=Escondedores,advancements={hns:using_pointer_spyglass=true}] if items entity @s weapon.offhand minecraft:spyglass[minecraft:custom_data={pointer:1b}] run item replace entity @s weapon.offhand with air

execute on attacker if entity @s[type=player,team=Procuradores] at @s rotated as @p[team=Escondedores,advancements={hns:using_pointer_spyglass=true}] run tp ^ ^ ^
execute on attacker if entity @s[type=player,team=Procuradores] run effect give @s slowness 1 255 true
execute on attacker if entity @s[type=player,team=Procuradores] at @s run playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 1 0

advancement revoke @s only hns:using_pointer_spyglass
