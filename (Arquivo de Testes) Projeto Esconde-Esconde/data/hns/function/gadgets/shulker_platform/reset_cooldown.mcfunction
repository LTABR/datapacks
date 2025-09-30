scoreboard players reset @s shulker_platform
advancement revoke @s only hns:use_shulker_platform
execute unless entity @a[scores={shulker_platform=1..}] run scoreboard objectives remove shulker_platform
