# Picks up the boomerang item for the player

data modify storage tcc:storage root.temp.item set from storage tcc:storage root.temp.boomerang.item
playsound minecraft:entity.item.pickup player @a[distance=..16] ~ ~ ~ 1 1.2
execute if data entity @s[gamemode=!creative] SelectedItem run function tcc:item/boomerang/entity_interaction/pickup/restore_slot with storage tcc:storage root.temp.boomerang.macro_input
execute unless data entity @s[gamemode=!creative] SelectedItem run loot replace entity @s weapon.mainhand loot tcc:technical/copy_nbt/warped_fungus_on_a_stick
data modify storage tcc:storage root.temp.boomerang.macro_input.UUID set value "found"
scoreboard players set @s tcc.boomerang_cooldown 0
