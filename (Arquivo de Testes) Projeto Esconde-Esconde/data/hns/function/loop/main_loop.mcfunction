schedule function hns:loop/main_loop 1t

# particles
execute as @a[scores={blocked=1..}] at @s run function hns:functions/blocked_particles

# hit bell speed loop
execute as @a[scores={bell=1..}] run function hns:functions/bell_rang

# stop some sounds
execute if score .hiding Opcoes matches 0 run stopsound @a * entity.player.levelup

# glow after eating chorus fruit
execute as @a[scores={chorus=1..}] at @s summon block_display as @s run function hns:gadgets/chorus_fruit/summon_display

# running actions
execute as @a[predicate=hns:correndo,team=Escondedores] at @s run particle minecraft:dragon_breath ~ ~-0.5 ~ 0.5 0.15 0.5 0.001 1 normal
execute as @a[predicate=hns:correndo,team=Procuradores,predicate=!hns:has_no_glowing_leggings,tag=!has_leggings] at @s if score .seekers_glow Opcoes matches 2 run effect give @s minecraft:glowing 1 255 true
effect clear @a[predicate=!hns:correndo,team=Procuradores,predicate=hns:has_glowing_effect] minecraft:glowing

# feather elytra loop
# execute unless score .elytra Opcoes matches 0 as @a[predicate=hns:prevent_firework] at @s run function hns:functions/prevent_offhand_firework
# execute as @a[scores={normal_jump=1..},predicate=!hns:holding_feather] run scoreboard players remove @s[scores={rabbit_jump=1..}] rabbit_jump 1
# execute as @a[predicate=hns:holding_feather] run function hns:loop/feather_elytra/feather_elytra with storage options ingame
# scoreboard players reset * normal_jump

execute as @e[type=shulker,tag=shulker_crawl,team=Escondedores] run function hns:functions/crawling/call_return_trigger with storage options hiders
execute as @e[type=shulker,tag=shulker_crawl,team=Procuradores] run function hns:functions/crawling/call_return_trigger with storage options seekers

# update entities
execute as @e[type=minecraft:villager,tag=shop] run function hns:functions/modify_villager_offers

execute as @e[type=minecraft:arrow] at @s run function hns:functions/on_arrows
execute as @e[type=minecraft:trident] run function hns:gadgets/on_trident
execute if entity @a[scores={bat_spawn_egg=1..}] as @e[type=bat,tag=morcego] at @s run function hns:functions/update_bats

# lingering potions loop
execute if entity @a[scores={thrown=1..}] as @e[type=area_effect_cloud] run function hns:gadgets/lingering_potions/trigger
execute at @e[type=area_effect_cloud,tag=smoke] run particle sonic_boom ~ ~ ~ 2.5 2 2.5 0 50 force

# teleporter plate loop
execute as @e[type=minecraft:interaction,tag=preparing,limit=1] at @s run function hns:gadgets/teleporter_plate/place_plate
execute as @a[tag=!trigger] at @s if block ~ ~ ~ sculk_shrieker[shrieking=true] if entity @e[type=interaction,tag=teleporter_plate,distance=..0.75,limit=1] run function hns:gadgets/teleporter_plate/on_player

execute as @e[type=minecraft:interaction,tag=teleporter_plate] at @s on attacker if entity @s[team=Procuradores] run function hns:gadgets/teleporter_plate/break_plate
execute as @a[scores={teleport_order=1..}] run scoreboard players add @s teleport_order 1

# teleporter portal loop
execute if entity @a[scores={teleporter_portal=1..}] as @e[type=minecraft:interaction,tag=spawn_teleporter] at @s run function hns:gadgets/teleporter_portal/place_portal

execute as @e[type=minecraft:interaction,tag=unset] on attacker if entity @s[team=Procuradores] at @s run function hns:gadgets/teleporter_portal/break_portal
execute as @a[predicate=hns:agachando] run function hns:gadgets/teleporter_portal/trigger

# honey and slowness teleporters
execute as @a[scores={honey=1..}] at @s run function hns:gadgets/teleporter_drinks/honey_teleporter

# boxes loop
execute if score .destructible_mode Opcoes matches 0 as @a[scores={box=1..}] at @e[type=minecraft:shulker,tag=caixa,tag=!placed] run function hns:gadgets/boxes/shulker_box/check_placement
execute if score .destructible_mode Opcoes matches 0 as @a[scores={gravel_box=1..}] as @e[type=minecraft:block_display,tag=gravel_box] at @s run function hns:gadgets/boxes/gravel_box

# refill boxes
execute if score .destructible_mode Opcoes matches 0 as @a[scores={novacaixa=1..}] run function hns:refill/box

# fake block loop
execute as @e[type=minecraft:block_display,tag=fake_block,tag=!waiting,limit=1] at @s run function hns:gadgets/fake_block/place
execute as @e[type=minecraft:block_display,tag=fake_block_ready] at @s run function hns:gadgets/fake_block/loop

# seek pearl loop
execute if entity @a[scores={used_pearl=1..}] as @e[type=ender_pearl] at @s on origin if entity @s[scores={used_pearl=1..}] as @e[type=ender_pearl,sort=nearest,limit=1] run function hns:gadgets/seeker_pearl/on_thrown_pearl

# bear trap loop
execute if entity @a[team=Escondedores,scores={bear_trap=1..}] as @e[type=interaction,tag=bear_trap] at @s run function hns:gadgets/bear_trap/place
execute as @a[team=Procuradores,predicate=hns:stepping_on_amethyst] at @s if entity @e[type=interaction,tag=bear_trap,distance=..1] run function hns:gadgets/bear_trap/trigger
execute at @a[team=Procuradores] if entity @e[type=interaction,tag=bear_trap,distance=..5,limit=1] run function hns:gadgets/bear_trap/break

# shared lives loop
execute if score .shared_lives Opcoes matches 1 as @a[team=Escondedores,scores={shared_lives=1..,damageTaken=1..}] if entity @s run function hns:functions/shared_lives/share_damage

# unstable cloud spell loop
execute as @a[predicate=hns:using_unstable_cloud_spell,predicate=!hns:in_shop] at @s run function hns:gadgets/unstable_cloud_spell/use
execute as @a[scores={damageTaken=1..},predicate=hns:using_unstable_cloud_spell] at @s run function hns:gadgets/unstable_cloud_spell/drop

scoreboard players reset * damageTaken

# alarm trap loop
execute as @a[team=Procuradores,scores={alarm_trap=1..}] run function hns:gadgets/alarm_trap/place
execute as @a[team=Escondedores,tag=!caught] at @s if entity @e[tag=alarm_trap,distance=..3,type=block_display] run function hns:gadgets/alarm_trap/detected
execute as @a[team=Escondedores,tag=caught] at @s unless entity @e[tag=alarm_trap,distance=..3,type=block_display] run tag @s remove caught

# invisible seat loop
execute if entity @a[scores={seat=1..}] as @e[type=camel,tag=seat,tag=!occupied,limit=1] at @s run function hns:gadgets/invisible_seat/ride_seat
execute as @e[type=camel,tag=seat,tag=occupied] unless predicate hns:on_ride at @s run function hns:gadgets/invisible_seat/leave_seat

# fishing bait loop
execute as @e[type=minecraft:fishing_bobber,nbt={OnGround: 1b}] at @s unless entity @e[type=minecraft:text_display,distance=..1] on origin if entity @s[team=Escondedores] run summon minecraft:text_display ~ ~ ~ {billboard:"center", Tags: ["isca"], "text":[{"text":"Isca","color":"white","bold":true,"italic":true}]}

# check for deaths
execute as @a[team=Escondedores,scores={Mortes=1..}] at @s run function hns:give/new_seeker_items

# wormhole potion loop
execute as @a[team=Procuradores,scores={wormhole_potion=1..}] run function hns:gadgets/wormhole_potion/get_id
execute as @a[team=Procuradores,scores={wormhole_potion=-1}] run function hns:gadgets/wormhole_potion/cancel_teleport

# =============== DESTRUCTIBLE MODE ===============
# cobweb trap loop
execute as @e[type=minecraft:interaction,tag=cobweb_trap] at @s run function hns:gadgets/cobweb_trap/loop

# disable storages loop
execute as @a[predicate=hns:opened_storage] at @s run function hns:functions/disable_storages
