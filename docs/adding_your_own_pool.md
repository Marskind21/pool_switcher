# Adding your item pool to the list

## Data pack

I assume you're already making a Fetchr extension as discribed [here](https://github.com/NeunEinser/bingo/blob/develop/docs/modifying_item_pool.md) and are not modifying the exsisting Fetchr data and resource pack.

### Small deviations from the "Modifying the item pool" guide

Instead of adding the `fetchr:default` tag to your categories and removing the exsisting ones, you can just add your own tag (e.g `my_extension:first_pool`). This can look like this:

```mcfunction
data modify storage fetchr:registries categories append value {\
	id: "my_extension:armadillo",\
	name: {"translate": "my_extension.category.armadillo"},\
	tags: ["my_extension:first_pool"]\
}
```

You can also add your own tag to exsisting categories by using a command like `data modify storage fetchr:registries categories[{id:"fetchr:copper"}].tags append value "my_extension:first_pool"` in your function that is inside the `#fetchr:post_registration` function tag. \
(Note: This should be a different function than the one in the `#fetchr:fill_registries` function tag!)

### For this extension

To add your item pool(s) to the item pool list you have to create a new function and add it to the `#endermars21.pool_switcher:fill_pool_list` function tag.

`data/endermars21.pool_switcher/tags/function/fill_pool_list`:

```json
{
	"values": [
		"namespace:path/to/your/function"
	]
}
```

Inside your function you can add your item pool to the item pool list like so:

```mcfunction
data modify storage endermars21.pool_switcher:item_pools pools append value {\
	tags: [ "my_extension:first_pool" ],\
	name: { translate: "my_extension.pool.first_pool" },\
	description: { translate: "my_extension.pool.first_pool.description" }\
}
```

- `tags` specify which item pool tags are used for the item pool
- `name` is a text component used to display the name of an item pool inside the `Change Item Pool` dialog.
- `description` is a text component used to display a tooltip for an item pool inside the `Change Item Pool` dialog.

## Resource pack

For the resouce pack you just need to add additional translation keys for the item pool name and discription.

Following the example it would look like this:

`assets/my_extension/lang/en_us.json`:

```json
{
	"my_extension.pool.first_pool": "My first item pool",
	"my_extension.pool.first_pool.description": "My first item pool added to Fetchr",

	"other_translation_keys": "..."
}
```
