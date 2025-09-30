$execute store result score .random_x Opcoes run random value -$(random)..$(random)
execute store result score .random_y Opcoes run random value 1000..2000
$execute store result score .random_z Opcoes run random value -$(random)..$(random)
data remove storage border_saves random

# tellraw @a {"score":{"name":".random_x","objective":"Opcoes"}}
# tellraw @a {"score":{"name":".random_y","objective":"Opcoes"}}
# tellraw @a {"score":{"name":".random_z","objective":"Opcoes"}}
