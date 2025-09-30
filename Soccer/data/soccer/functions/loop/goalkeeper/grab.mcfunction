scoreboard players set @s grab 1
execute as @e[tag=ball] at @s run tp @s ~ ~-100 ~
kill @e[tag=ball]
kill @e[tag=kick]
summon cat ~ ~-100 ~ {CustomName:'{"text":"ball"}',Silent:1b,HurtTime:1,DeathLootTable:"hns:empty",Health:99999f,Tags:["ball"],Passengers:[{id:"minecraft:item_display",Tags:["ball"],transformation:{translation:[0f,0.25f,0f]},item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I; -1570091303, 2082882688, -1252986980, 235073443],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGU0YTcwYjdiYmNkN2E4YzMyMmQ1MjI1MjA0OTFhMjdlYTZiODNkNjBlY2Y5NjFkMmI0ZWZiYmY5ZjYwNWQifX19"}]}}}}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:99999999},{Name:generic.movement_speed,Base:0},{Name:generic.attack_damage,Base:0}]}
summon interaction ~ ~ ~ {width:2.0,height:2.0,Tags:["hitbox"]}
ride @e[type=interaction,tag=hitbox,limit=1] mount @e[limit=1,type=item_display,tag=ball]
execute as @s at @s run function soccer:loop/goalkeeper/grab_loop
