summon bat ~ ~ ~ {Silent:0b,Health:2f,Tags: ["morcego2"],attributes:[{id:"max_health",base:2},{id:"scale",base:0.5}], Passengers: [{id: "minecraft:minecart", NoGravity: 1b, Tags: ["montaria"]}]}
ride @p[scores={bat_spawn_egg=1..}] mount @e[type=minecraft:minecart,tag=montaria,limit=1,sort=nearest]
scoreboard players reset @p[scores={bat_spawn_egg=1..}] bat_spawn_egg
tp @s ~ ~-300 ~
kill @s
