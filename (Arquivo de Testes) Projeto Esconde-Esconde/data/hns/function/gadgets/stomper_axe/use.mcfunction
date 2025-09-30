summon minecraft:wind_charge ~ ~ ~ {Motion:[0.0,-10.0,0.0]}
summon minecraft:wind_charge ~ ~ ~ {Motion:[0.0,-10.0,0.0]}

playsound minecraft:block.anvil.place player @a ~ ~ ~ 2 0

item modify entity @s weapon.mainhand hns:damage_stomper_axe

advancement revoke @s only hns:use_stomper_axe
