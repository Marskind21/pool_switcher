execute if score @s endermars21.pool_switcher.change_pool matches -2 run dialog clear @s
execute if score @s endermars21.pool_switcher.change_pool matches -1 run function endermars21.pool_switcher:dialog/build

execute if score @s endermars21.pool_switcher.change_pool matches 1.. run function endermars21.pool_switcher:dialog/operator_check

scoreboard players reset @s endermars21.pool_switcher.change_pool
