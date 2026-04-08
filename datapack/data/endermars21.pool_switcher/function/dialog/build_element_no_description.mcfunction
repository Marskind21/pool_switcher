$data modify storage endermars21.pool_switcher:dialog actions append value { \
	label: $(name), \
	action: { \
		type: "minecraft:run_command", \
		command: "trigger endermars21.pool_switcher.change_pool set $(id)", \
	}, \
	width: 200, \
}
