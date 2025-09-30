$execute if entity @a[advancements={hns:hit_by_seeker=true},tag=hit] as @a[team=Escondedores,tag=take_hit] run damage @s $(damage) minecraft:player_explosion by @e[limit=1,advancements={hns:seeker_hit_hider=true}]
execute if entity @a[advancements={hns:hit_by_seeker=true},tag=hit] as @a[team=Escondedores,tag=take_hit] run advancement revoke @s only hns:hit_by_seeker
$execute if entity @a[advancements={hns:hit_by_seeker=false}] as @a[team=Escondedores,tag=take_hit] run damage @s $(damage) magic
data remove storage share_damage damage

tag @a remove take_hit
tag @a remove hit
