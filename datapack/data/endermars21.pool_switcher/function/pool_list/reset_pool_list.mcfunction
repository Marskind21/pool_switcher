# clear all item pool list
data modify storage endermars21.pool_switcher:item_pools pools set value []
# refill item pool list
function #endermars21.pool_switcher:fill_pool_list

# giving each entry an unique numeric id
execute store result score $list.length endermars21.pool_switcher.counter if data storage endermars21.pool_switcher:item_pools pools[]
scoreboard players set $iteration endermars21.pool_switcher.counter 0
data modify storage endermars21.pool_switcher:tmp iteration set value 0
function endermars21.pool_switcher:pool_list/give_ids with storage endermars21.pool_switcher:tmp
