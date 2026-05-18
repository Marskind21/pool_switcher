execute unless entity @e[type=marker,tag=endermars21.pool_switcher.sign] in fetchr:lobby run summon marker -21 4 11 {Tags:["endermars21.pool_switcher.sign","endermars21.pool_switcher.marker","fetchr.sign_east","fetchr.lobby_sign"], \
	data: { \
		front_text: { \
			messages: [ \
				{ \
					click_event: { \
						action: "run_command", \
						command: "function endermars21.pool_switcher:dialog/build" \
					}, \
					color: "#8eedeb", bold: 1b, translate: "endermars21.pool_switcher.sign.change_pool.line1" \
				}, \
				{color: "#8eedeb", bold: 1b, translate: "endermars21.pool_switcher.sign.change_pool.line2"}, \
				{color: "#8eedeb", bold: 1b, translate: "endermars21.pool_switcher.sign.change_pool.line3"}, \
				{color: "#8eedeb", bold: 1b, translate: "endermars21.pool_switcher.sign.change_pool.line4"} \
			] \
		} \
	} \
}

execute unless entity @e[type=marker,tag=endermars21.pool_switcher.lectern] in fetchr:lobby run summon marker -21 3 11 {Tags:["endermars21.pool_switcher.lectern","endermars21.pool_switcher.marker","fetchr.lobby_lectern","fetchr.lectern_east"], \
	data: { \
		Book: { \
			components: { \
				"minecraft:written_book_content": { \
					pages: [ \
						[ \
							"", \
							{color: "dark_aqua", bold: 1b, translate: "endermars21.pool_switcher.book.heading"}, \
							"\n", \
							{translate: "endermars21.pool_switcher.book.page1"} \
						], \
						{translate: "endermars21.pool_switcher.book.page2"} \
					], \
					author: "EnderMars21", \
					title: "Item Pools" \
				} \
			}, \
			id: "minecraft:written_book" \
		} \
	} \
}

function fetchr:lobby/place_indestructible_blocks
