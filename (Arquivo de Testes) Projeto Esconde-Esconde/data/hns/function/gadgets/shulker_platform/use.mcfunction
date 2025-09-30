summon area_effect_cloud ~ ~-3.3 ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:101,Tags:["platform"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,DeathLootTable:"hns:empty",NoAI:1b,Health:1f,AttachFace:0b,Color:4b,Tags:["platform"],attributes:[{id:max_health,base:1},{id:scale,base:2}]}]}
particle block{block_state:{Name:"minecraft:yellow_shulker_box"}} ~ ~-3.5 ~ 1 1 1 1 500

forceload add ~ ~

clear @s minecraft:gold_ingot[minecraft:custom_data={shulker_platform:1}] 1

scoreboard objectives add shulker_platform dummy
schedule function hns:gadgets/shulker_platform/loop 1t

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 1.5
