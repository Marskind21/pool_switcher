scoreboard objectives add endermars21.pool_switcher.counter dummy
scoreboard players set $list.length endermars21.pool_switcher.counter 0
scoreboard players set $iteration endermars21.pool_switcher.counter 0

#trigger for pool switching
scoreboard objectives add endermars21.pool_switcher.change_pool trigger
scoreboard objectives add endermars21.pool_switcher.change_pool.operator_check_callback dummy

execute if score $lobby_generated fetchr.state matches 4 in fetchr:lobby unless entity @e[type=marker,tag=endermars21.pool_switcher.marker,distance=0..] run function endermars21.pool_switcher:lobby/spawn_markers
