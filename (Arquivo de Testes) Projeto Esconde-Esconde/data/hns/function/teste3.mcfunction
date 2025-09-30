# NAO UTILIZANDO

$say $(playername)

$execute if entity @s[predicate=hns:agachando] run summon mannequin ~ ~ ~ {Tags:["doll"],pose:"crouching",immovable:false,profile:{name:"$(playername)"}}
$execute unless entity @s[predicate=hns:agachando] run summon mannequin ~ ~ ~ {Tags:["doll"],immovable:false,profile:{name:"$(playername)"}}
