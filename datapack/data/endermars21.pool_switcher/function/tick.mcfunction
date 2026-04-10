scoreboard players enable @a endermars21.pool_switcher.change_pool

execute as @a if score @s endermars21.pool_switcher.change_pool.operator_check_callback matches 1.. run function endermars21.pool_switcher:change_pool/operator_check_callback
execute as @a unless score @s endermars21.pool_switcher.change_pool matches 0 run function endermars21.pool_switcher:change_pool/main
