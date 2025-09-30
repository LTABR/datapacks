particle minecraft:reverse_portal ~ ~1 ~ 0.2 0.2 0.2 10 100 force
playsound minecraft:entity.player.teleport player @a ~ ~ ~ 0.3 0

item replace entity @s weapon.mainhand with ender_pearl[minecraft:custom_data={seeker_pearl:1}]
item modify entity @s weapon.mainhand hns:set_seeker_id
item modify entity @s weapon.mainhand hns:pearl_owner

data remove storage minecraft:seeker_pearl UUID

advancement revoke @a[advancements={hns:attacker_pearl=true}] only hns:attacker_pearl
advancement revoke @a[advancements={hns:victim_pearl=true}] only hns:victim_pearl
