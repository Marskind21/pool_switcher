# Item Pool Switcher 1.1.1

## Changelog:

- Intended Fetchr version is now Fetchr 5.3!
- Removed Item Pool Switcher Options from the pause screen options to make Fetchr's pause screen options quicker to access.

# Item Pool Switcher 1.1.0

## Changelog:

- Updated to Fetchr 5.3 Pre-Release 1
- Added an sign to switch the item pool inside the Fetchr lobby.
- Removed the Item Pool Switcher Options from the Quick Actions to make Fetchr's new Quick Actions quick again.
- Confirming your operator status now uses Fetchr's Confirm Operator Status dialog again.

## Technical Changes:

- You can now define an `id` for your item pools for other extension to find your item pool in the item pool list.
- You can now modify the item pool list after all entries have been added using the `#endermars21.pool_switcher:post_pool_list_filling` function tag.


# Item Pool Switcher 1.0.5

## Changelog:

- The default Fetchr item pool is now always the first entry in the item pool list.

# Item Pool Switcher 1.0.4

## Changelog:

- The item pool list is now also reloaded when opening the change item pool dialog.

# Item Pool Switcher 1.0.3

## Changelog:

- Improved the operator status confirmation process to work correctly in multiplayer.
- Added a function `endermars21.pool_switcher:util/check_for_datapack` for other data packs to check if this extension is present. The return value of this function is `1`.

# Item Pool Switcher 1.0.2

## Changelog:

- You now need to confirm your operator status in multiplayer servers to be able to switch to a different item pool.

# Item Pool Switcher 1.0.1

## Changelog:

- Added german translations.
- Added a button to for reporting bugs and give feedback linking to the [issue page](https://github.com/Marskind21/pool_switcher/issues).

![The "Item Pool Switcher Options" dialog with the "Report Bugs and give Feedback" button highlighted](images/report_button.png)
