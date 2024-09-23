# Picks up the boomerang item for the player

advancement grant @s only tcc:minecraft/adventure/catch_boomerang
scoreboard players set @s tcc.boomerang_cooldown 0
data modify storage tcc:temp root.boomerang.macro_input.UUID set value "found"
data modify storage tcc:temp root.item set from storage tcc:temp root.boomerang.item
data modify storage tcc:temp root.item.slot set from storage tcc:temp root.boomerang.macro_input.slot

playsound minecraft:entity.item.pickup player @a[distance=..16] ~ ~ ~ 1 1.2
execute if data storage tcc:temp root.item{slot:"weapon.offhand"} unless data entity @s[gamemode=!creative] Inventory[{Slot:-106b}] run return run function tcc:technical/macros/loot/replace with storage tcc:temp root.item
execute if data storage tcc:temp root.item{slot:"weapon.offhand"} if data entity @s[gamemode=!creative] Inventory[{Slot:-106b}] run data modify storage tcc:temp root.item.slot set value 0
execute if data entity @s[gamemode=!creative] SelectedItem run return run function tcc:item/boomerang/entity_interaction/pickup/restore_slot with storage tcc:temp root.item
execute unless data entity @s[gamemode=!creative] SelectedItem run data modify storage tcc:temp root.item.slot set value "weapon.mainhand"
execute unless data entity @s[gamemode=!creative] SelectedItem run function tcc:technical/macros/loot/replace with storage tcc:temp root.item