# Throws the boomerang from a player's hand

data modify storage tcc:temp root.item set from entity @s SelectedItem
execute if entity @s[gamemode=!creative] run function tcc:technical/macros/damage_slot/main {slot:"weapon.mainhand",slot_raw:"SelectedItem",amount:"1"}
execute unless data entity @s SelectedItem run return 0

execute at @s run playsound tcc:item.boomerang.throw player @a[distance=..16]
data remove storage tcc:temp root
data modify storage tcc:temp root.boomerang.UUID set from entity @s UUID
data modify storage tcc:temp root.boomerang.item set from entity @s SelectedItem
data modify storage tcc:temp root.boomerang.slot set from entity @s SelectedItemSlot
data modify storage tcc:temp root.boomerang.gamemode set from entity @s playerGameType
execute if entity @s[gamemode=!creative] run item replace entity @s weapon.mainhand with minecraft:air
execute summon minecraft:item_display run function tcc:item/boomerang/initiate
scoreboard players set @s tcc.boomerang_cooldown 10