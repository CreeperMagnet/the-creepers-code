# Picks up the boomerang item for the player

scoreboard players set @s tcc.boomerang_cooldown 0
data modify storage tcc:temp root.boomerang.macro_input.UUID set value "found"
data modify storage tcc:temp root.item set from storage tcc:temp root.boomerang.item
data modify storage tcc:temp root.item.slot set from storage tcc:temp root.boomerang.macro_input.slot

playsound minecraft:entity.item.pickup player @a[distance=..16] ~ ~ ~ 1 1.2
execute if data entity @s[gamemode=!creative] SelectedItem run function tcc:item/boomerang/entity_interaction/pickup/restore_slot with storage tcc:temp root.item
execute unless data entity @s[gamemode=!creative] SelectedItem run data modify storage tcc:temp root.item.slot set value "weapon.mainhand"
execute unless data entity @s[gamemode=!creative] SelectedItem run function tcc:technical/macros/loot/replace with storage tcc:temp root.item
