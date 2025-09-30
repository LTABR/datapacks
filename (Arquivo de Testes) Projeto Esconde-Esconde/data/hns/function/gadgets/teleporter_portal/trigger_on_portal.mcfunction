execute as @e[type=stray,tag=dummy] at @s run tag @p add skin
execute as @p[tag=skin] run loot replace entity @e[type=stray,tag=dummy,limit=1,sort=nearest] armor.head loot hns:entities/player

kill @e[type=minecraft:text_display,tag=portal_text,sort=nearest,limit=1]
kill @e[type=minecraft:interaction,limit=1,tag=unset,sort=nearest]
data modify entity @e[type=minecraft:cat,limit=1,tag=teleporter_portal,sort=nearest] Owner set from entity @e[type=minecraft:cat,limit=1,tag=teleporter_portal,sort=nearest] UUID

kill @e[type=minecraft:cat,limit=1,tag=teleporter_portal,sort=nearest]
data modify entity @e[type=minecraft:stray,limit=1,sort=nearest,tag=dummy] Rotation[0] set from entity @p[tag=skin] Rotation[0]
data modify entity @e[type=minecraft:stray,limit=1,sort=nearest,tag=dummy] Rotation[1] set from entity @p[tag=skin] Rotation[1]
tag @a[tag=skin] remove skin

tp @s ~ ~ ~
execute if entity @p[distance=..1] run kill @e[type=minecraft:item_display,sort=nearest,limit=1]
effect give @p[team=Escondedores] minecraft:resistance 1 255 true
effect give @p[team=Escondedores] minecraft:glowing 7 255 true
effect give @p minecraft:resistance 1 255 true
summon minecraft:lightning_bolt
kill @e[type=minecraft:interaction,limit=2,sort=nearest]
kill @e[type=minecraft:text_display,sort=nearest,limit=1]

function hns:gadgets/teleporter_portal/particles/animate
schedule function hns:gadgets/teleporter_portal/particles/animate 5t append
schedule function hns:gadgets/teleporter_portal/particles/animate 10t append
schedule function hns:gadgets/teleporter_portal/particles/animate 15t append
schedule function hns:gadgets/teleporter_portal/particles/animate 1s append
