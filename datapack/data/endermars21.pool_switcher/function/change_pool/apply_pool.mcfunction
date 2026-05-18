$data modify storage fetchr:items active_tags set from storage endermars21.pool_switcher:item_pools pools[{numeric_id:$(id)}].tags

function fetchr:util/apply_active_item_tags

$tellraw @a { \
	translate: "endermars21.pool_switcher.message.pool_changed", \
	with:[ \
		{ \
			nbt: "pools[{numeric_id:$(id)}].name", \
			storage: "endermars21.pool_switcher:item_pools", \
			interpret: true, \
			color: "green", \
			hover_event: { \
				action: "show_text", \
				value: { \
					nbt: "pools[{numeric_id:$(id)}].description", \
					storage: "endermars21.pool_switcher:item_pools", \
					interpret: true, \
				}, \
			}, \
		}, \
	], \
	fallback: "The current item pool has been changed to %s.", \
}
