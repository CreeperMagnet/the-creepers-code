# Throws a boomerang from the player's hand

data remove storage tcc:temp root
$data modify storage tcc:temp root.item set from entity @s $(slot_raw)
$execute if entity @s[gamemode=!creative] run function tcc:technical/macros/damage_slot/main {slot:"$(slot)",slot_raw:"$(slot_raw)",amount:"1"}
$execute unless data entity @s $(slot_raw) run return 0

# Item has not broken if did not return, so throw
execute at @s run playsound tcc:item.boomerang.throw player @a[distance=..16]
data remove storage tcc:temp root
data modify storage tcc:temp root.boomerang.UUID set from entity @s UUID
data modify storage tcc:temp root.boomerang.gamemode set from entity @s playerGameType

$data modify storage tcc:temp root.boomerang.item set from entity @s $(slot_raw)
$data modify storage tcc:temp root.boomerang.slot set $(boomerang_slot_data)
$execute if entity @s[gamemode=!creative] run item replace entity @s $(slot) with minecraft:air

execute summon minecraft:item_display run function tcc:item/boomerang/initiate
scoreboard players set @s tcc.boomerang_cooldown 10