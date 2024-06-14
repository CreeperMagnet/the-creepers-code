# Functions to run when a player dies with a soulbound item

tag @s[nbt=!{Inventory:[{components:{"minecraft:custom_data":{tcc:{soulbound:1b}}}}]},nbt=!{Inventory:[{id:"minecraft:recovery_compass"}]}] remove tcc.has_soulbound_item
advancement revoke @s only tcc:technical/inventory_changed/soulbound_item/check_drop