clear @s minecraft:iron_ingot[minecraft:custom_data={iron_golem:1}] 1

particle minecraft:block{block_state:{Name:"minecraft:iron_block"}} ~ ~1 ~ 0.5 0.5 0.5 1 500
playsound minecraft:block.anvil.place player @a ~ ~ ~ 2 0.75

execute store result storage golem_thorns UUID.UUID1 int 1.0 run data get entity @p[team=Procuradores] UUID[0]
execute store result storage golem_thorns UUID.UUID2 int 1.0 run data get entity @p[team=Procuradores] UUID[1]
execute store result storage golem_thorns UUID.UUID3 int 1.0 run data get entity @p[team=Procuradores] UUID[2]
execute store result storage golem_thorns UUID.UUID4 int 1.0 run data get entity @p[team=Procuradores] UUID[3]

function hns:gadgets/iron_golem_thorns/summon_golem with storage golem_thorns UUID

data remove storage golem_thorns UUID

advancement revoke @s only hns:hit_by_seeker_summon_iron_golem
