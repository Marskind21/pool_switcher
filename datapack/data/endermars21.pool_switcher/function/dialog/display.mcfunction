$dialog show @s {\
	type: "minecraft:multi_action", \
	title: { \
		translate: "endermars21.pool_switcher.dialog.change_pool", \
		fallback: "Change Item Pool", \
	}, \
	after_action: "close", \
	exit_action: { \
		label: { \
			translate: "gui.back", \
		}, \
		action: { \
			type: "minecraft:show_dialog", \
			dialog: "endermars21.pool_switcher:prep", \
		} \
	}, \
	columns: 1, \
	actions: $(actions), \
	pause: false, \
}
