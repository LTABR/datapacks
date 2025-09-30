execute as @e[type=cat,tag=teleporter_portal] on owner if predicate hns:agachando at @s run function hns:gadgets/teleporter_portal/trigger_on_player

forceload remove ~ ~

execute as @e[type=cat,tag=teleporter_portal] at @s on owner if predicate hns:agachando run function hns:gadgets/teleporter_portal/trigger_on_portal
