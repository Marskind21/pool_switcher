$dialog show @s {\
	type: "minecraft:multi_action", \
	title: { \
		translate: "endermars21.pool_switcher.dialog.change_pool", \
		fallback: "Change Item Pool", \
	}, \
	after_action: "none", \
	exit_action: { \
		label: { \
			translate: "gui.back", \
		}, \
		action: { \
			type: "minecraft:run_command", \
			command: "trigger endermars21.pool_switcher.change_pool set -2", \
		} \
	}, \
	columns: 1, \
	actions: $(actions), \
	pause: false, \
}
