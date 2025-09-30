$tellraw @p[tag=consumed_wormhole_potion] [{"text":"  "},{"selector":"@s","color":"gold","underlined":true,"hover_event":{"action":"show_text","value":[{"text":"Clique Para Teletransportar-se","color":"gray"}]},"click_event":{"action":"run_command","command":"/trigger wormhole_potion set $(option_id)"}}]

data remove storage wormhole_potion option_id
