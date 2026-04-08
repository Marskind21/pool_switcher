scoreboard players enable @a endermars21.pool_switcher.change_pool

execute as @a unless score @s endermars21.pool_switcher.change_pool matches 0 run function endermars21.pool_switcher:change_pool/main
