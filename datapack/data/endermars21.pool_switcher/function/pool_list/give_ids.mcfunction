# increment iteration/id counter by 1
scoreboard players add $iteration endermars21.pool_switcher.counter 1
execute store result storage endermars21.pool_switcher:tmp iteration int 1 run scoreboard players get $iteration endermars21.pool_switcher.counter
# add id value to entry
$data modify storage endermars21.pool_switcher:item_pools pools[$(iteration)].id set from storage endermars21.pool_switcher:tmp iteration
# continue with the rest of the array
execute if score $iteration endermars21.pool_switcher.counter < $list.length endermars21.pool_switcher.counter run function endermars21.pool_switcher:pool_list/give_ids with storage endermars21.pool_switcher:tmp
