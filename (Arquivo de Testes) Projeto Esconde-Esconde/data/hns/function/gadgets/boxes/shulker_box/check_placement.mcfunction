execute if block ~ ~ ~ #hns:invalid_placements as @e[tag=caixa,type=shulker,limit=1,sort=nearest] run function hns:gadgets/boxes/shulker_box/return_item
execute unless block ~ ~ ~ #hns:invalid_placements run tag @e[tag=caixa,type=shulker,limit=1,sort=nearest] add placed

scoreboard players reset * box
