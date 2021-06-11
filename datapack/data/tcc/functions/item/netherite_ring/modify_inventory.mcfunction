############################################################
# Description: Commands to change a netherite ring item from a netherite ingot (immune to fire) back into a carrot on a stick when in the player's inventory
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/netherite_ring

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item.tag set from entity @s Inventory[{id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}].tag
data remove storage tcc:storage root.temp.item.tag.UUID
loot replace entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.0 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.1 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.2 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.3 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.4 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.5 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:6b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.6 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.7 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.8 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:9b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.9 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:10b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.10 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:11b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.11 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:12b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.12 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:13b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.13 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:14b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.14 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:15b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.15 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:16b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.16 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:17b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.17 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:18b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.18 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:19b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.19 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:20b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.20 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:21b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.21 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:22b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.22 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:23b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.23 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:24b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.24 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:25b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.25 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:26b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.26 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:27b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.27 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:28b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.28 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:29b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.29 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:30b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.30 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:31b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.31 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:32b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.32 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:33b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.33 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:34b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.34 loot tcc:technical/carrot_on_a_stick_copy_nbt
loot replace entity @s[nbt={Inventory:[{Slot:35b,id:"minecraft:netherite_ingot",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}]}] container.35 loot tcc:technical/carrot_on_a_stick_copy_nbt
