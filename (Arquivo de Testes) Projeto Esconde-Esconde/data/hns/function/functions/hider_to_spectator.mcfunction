gamemode spectator @s
team leave @s

scoreboard players reset * Mortes

advancement revoke @a[advancements={hns:hider_to_seeker=true}] only hns:hider_to_seeker
advancement revoke @a[advancements={hns:hider_teamkilled=true}] only hns:hider_teamkilled

execute unless entity @a[team=Escondedores,gamemode=!spectator] run return run function hns:give/check_last_dead_hider
