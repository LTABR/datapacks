execute store result score .current_seekers Opcoes run execute if entity @a[scores={manual_seeker=1}]

execute if score .manual_seekers Opcoes matches 0 run scoreboard players set .manual_seekers Opcoes 1
$execute if score .current_seekers Opcoes < .seekers Opcoes run scoreboard players set @p[nbt={UUID:[I;$(uuid1),$(uuid2),$(uuid3),$(uuid4)]}] manual_seeker 1

execute as @a[tag=Admin] run function hns:configuration/set_seekers/set_seekers_list
