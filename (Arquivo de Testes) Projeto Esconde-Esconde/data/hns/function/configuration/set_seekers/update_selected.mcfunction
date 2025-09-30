$scoreboard players reset @p[nbt={UUID:[I;$(uuid1),$(uuid2),$(uuid3),$(uuid4)]}] manual_seeker

execute unless entity @a[scores={manual_seeker=1..}] run scoreboard players set .manual_seekers Opcoes 0

execute as @a[tag=Admin] run function hns:configuration/set_seekers/set_seekers_list
