execute as @a[tag=levitation_applied,predicate=!hns:using_unstable_cloud_spell] run effect clear @s levitation
$execute as @a[tag=levitation_applied,predicate=!hns:using_unstable_cloud_spell] run attribute @s gravity base set $(gravity)
execute as @a[tag=levitation_applied,predicate=!hns:using_unstable_cloud_spell] run tag @s remove levitation_applied
execute as @a[tag=gliding_applied,predicate=!hns:using_unstable_cloud_spell] run tag @s remove gliding_applied
