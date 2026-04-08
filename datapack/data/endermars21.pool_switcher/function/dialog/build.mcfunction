#setup scores
execute store result score $list.length endermars21.pool_switcher.counter if data storage endermars21.pool_switcher:item_pools pools[]
scoreboard players set $iteration endermars21.pool_switcher.counter 0
data modify storage endermars21.pool_switcher:tmp iteration set value 0

#building and displaying the pool switching dialog
data modify storage endermars21.pool_switcher:dialog actions set value []
function endermars21.pool_switcher:dialog/build_loop with storage endermars21.pool_switcher:tmp
function endermars21.pool_switcher:dialog/display with storage endermars21.pool_switcher:dialog
