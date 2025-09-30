execute as @s at @s anchored eyes positioned ^ ^ ^ summon block_display run function hns:functions/crawling/eyes_position
execute as @s at @s anchored feet positioned ^ ^ ^ summon block_display run function hns:functions/crawling/feet_position

scoreboard players set .default_crawling crawling 40

scoreboard players operation .diferenca crawling -= .pes crawling
scoreboard players operation .diferenca crawling *= .scale crawling
scoreboard players operation .default_crawling crawling *= .scale crawling
execute store success score @s crawling if score .diferenca crawling <= .default_crawling crawling

scoreboard players reset .diferenca crawling
scoreboard players reset .olhos crawling
scoreboard players reset .pes crawling
scoreboard players reset .default_crawling crawling
