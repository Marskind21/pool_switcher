scoreboard objectives add endermars21.pool_switcher.counter dummy
scoreboard players set $list.length endermars21.pool_switcher.counter 0
scoreboard players set $iteration endermars21.pool_switcher.counter 0

#trigger for pool switching
scoreboard objectives add endermars21.pool_switcher.change_pool trigger
scoreboard objectives add endermars21.pool_switcher.change_pool.operator_check_callback dummy
