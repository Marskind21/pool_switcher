# add default item pool already provided by Fetchr to the list
data modify storage endermars21.pool_switcher:item_pools pools append value { \
	tags: [ "fetchr:default" ], \
	name: { \
		translate: "endermars21.pool_switcher.pool.fetchr.default", \
		fallback: "Default Fetchr Item Pool" \
	}, \
	description: { \
		translate: "endermars21.pool_switcher.pool.fetchr.default.description", \
		fallback: "The default item pool provided by Fetchr." \
	} \
}
