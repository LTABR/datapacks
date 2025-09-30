# clear entities
kill @e[type=arrow]
kill @e[type=item]
kill @e[type=minecraft:text_display,tag=isca] 
kill @e[type=spectral_arrow]
kill @e[type=minecraft:interaction,tag=unset]
kill @e[type=minecraft:interaction,tag=teleportador_ocupado]
kill @e[type=minecraft:interaction,tag=teleportador_vazio]
kill @e[type=interaction,tag=spawn_teleporter]
kill @e[type=minecraft:horse,name="Cavalo Corredor"]
kill @e[type=item]
kill @e[type=husk,tag=husk_minion]
kill @e[type=minecraft:creeper,name="Terrorista"]
kill @e[type=bamboo_raft,tag=montaria]
kill @e[type=minecraft:shulker,tag=caixa]
kill @e[type=minecraft:villager,tag=shop]
kill @e[type=minecraft:witch,tag=shop]
kill @e[type=minecraft:rabbit,name="Lentidão em Área"]
kill @e[type=minecraft:bamboo_raft,tag=flying_boat]
kill @e[type=bat,tag=morcego2]
kill @e[type=minecart,tag=montaria]
kill @e[type=minecraft:text_display,tag=teleportador]
kill @e[type=minecraft:item_display,tag=teleportador]
kill @e[type=stray,tag=dummy]
kill @e[type=block_display,tag=fake_block_ready]
kill @e[type=block_display,tag=fake_block]
kill @e[tag=minion]
kill @e[tag=spawner]
kill @e[tag=arrow_minion,type=skeleton]
kill @e[tag=alarm_trap]
kill @e[tag=seat,type=camel]
kill @e[type=minecraft:fireball,tag=motion_applied]
execute as @e[type=minecraft:interaction,tag=cobweb_trap] at @s run fill ~ ~ ~ ~ ~ ~ air replace heavy_weighted_pressure_plate
kill @e[type=minecraft:interaction,tag=cobweb_trap]
kill @e[type=minecraft:vex,team=Procuradores]
kill @e[type=minecraft:iron_golem,tag=golem_guard]

# clear bear traps
execute as @e[type=minecraft:interaction,tag=bear_trap] at @s run fill ~ ~ ~ ~ ~ ~ air replace minecraft:small_amethyst_bud
kill @e[type=minecraft:interaction,tag=bear_trap]

# clear boxes
execute as @e[type=minecraft:shulker,tag=gravel_box] at @s run fill ~ ~ ~ ~ ~ ~ air replace minecraft:suspicious_gravel{item:{id:"minecraft:ravager_spawn_egg",count:1}}
kill @e[type=minecraft:shulker,tag=gravel_box]

# portals
kill @e[type=minecraft:interaction,tag=teleporter_portal]
kill @e[type=minecraft:item_display,tag=teleportador]
kill @e[type=minecraft:text_display,tag=portal_text]
kill @e[type=minecraft:interaction,tag=unset]

execute as @e[type=interaction,tag=teleporter_plate] at @s run function hns:gadgets/teleporter_plate/break_plate
