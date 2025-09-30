say blue scored

execute store result entity @e[type=minecraft:cat,limit=1,tag=ball] Pos[0] double 0.0010012 run scoreboard players get .center x_axis
execute store result entity @e[type=minecraft:cat,limit=1,tag=ball] Pos[2] double 0.0009967 run scoreboard players get .center z_axis
data merge entity @e[type=cat,limit=1,tag=ball] {Motion: [0.0d, 0.0d, 0.0d]}

particle minecraft:composter ~ ~ ~ 0.25 0.25 0.25 0.1 50 normal

summon minecraft:firework_rocket ~ ~5 ~ {LifeTime: 25, FireworksItem: {id: "minecraft:firework_rocket", Count: 1b, tag: {Fireworks: {Flight: 1b, Explosions: [{Type: 0, Trail: 1b, Colors: [I; 2228479], FadeColors: [I; 16777215]}, {Type: 4, Colors: [I; 2228479], Flicker: 1b, FadeColors: [I; 16777215]}, {Type: 1, Trail: 1b, Colors: [I; 2228479], FadeColors: [I; 16777215]}]}}}}
