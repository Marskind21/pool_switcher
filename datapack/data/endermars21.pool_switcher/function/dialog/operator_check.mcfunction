#check for operator status using some of Fetchrs built-in functionality
scoreboard players set @s fetchr.operator_check_callback_action -1
execute if score $is_multiplayer fetchr.state matches 1 unless score @s fetchr.operator matches 1 run scoreboard players operation @s endermars21.pool_switcher.change_pool.operator_check_callback = @s endermars21.pool_switcher.change_pool
execute if score $is_multiplayer fetchr.state matches 1 unless score @s fetchr.operator matches 1 run dialog show @s endermars21.pool_switcher:confirm_operator_status
execute if score $is_multiplayer fetchr.state matches 1 unless score @s fetchr.operator matches 1 run return 0

function endermars21.pool_switcher:change_pool/change_pool
