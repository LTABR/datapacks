scoreboard objectives add x_axis dummy
scoreboard objectives add z_axis dummy
scoreboard objectives add options dummy
scoreboard objectives add grab dummy
scoreboard objectives add id dummy
scoreboard objectives add timer dummy {"text":"Timer"}
scoreboard objectives add kick dummy

scoreboard players set .negative options -1
scoreboard players set .two options 2
scoreboard players set .thousand options 1000
scoreboard players set .blue_goal_side options 0
scoreboard players set .corner_order options 0
scoreboard players set .sixty options 60

team add blue
team add red

team add admin
team modify admin color dark_aqua
team modify admin prefix {"text":"[Mod] ","color":"dark_purple","bold":true,"italic":true}
team join admin @s

bossbar add timer {"text":"Timer"}
bossbar set minecraft:timer max 600
bossbar set minecraft:timer style notched_10

give @a[team=admin] command_block{display: {Name: '[{"text":"Set ","color":"white","italic":false},{"text":"field","bold":true,"underlined":true},{"text":" corner","italic":false,"underlined":false}]'}, BlockEntityTag: {Command: "function soccer:configuration/set_corner", auto: 1b}} 1

# fazer ser configurável
team modify blue friendlyFire false
team modify red friendlyFire false
