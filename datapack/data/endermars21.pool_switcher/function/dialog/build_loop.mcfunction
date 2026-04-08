$execute if data storage endermars21.pool_switcher:item_pools pools[$(iteration)].description run function endermars21.pool_switcher:dialog/build_element with storage endermars21.pool_switcher:item_pools pools[$(iteration)]

$execute unless data storage endermars21.pool_switcher:item_pools pools[$(iteration)].description run function endermars21.pool_switcher:dialog/build_element_no_description with storage endermars21.pool_switcher:item_pools pools[$(iteration)]

scoreboard players add $iteration endermars21.pool_switcher.counter 1
execute store result storage endermars21.pool_switcher:tmp iteration int 1 run scoreboard players get $iteration endermars21.pool_switcher.counter

execute if score $iteration endermars21.pool_switcher.counter < $list.length endermars21.pool_switcher.counter run function endermars21.pool_switcher:dialog/build_loop with storage endermars21.pool_switcher:tmp
