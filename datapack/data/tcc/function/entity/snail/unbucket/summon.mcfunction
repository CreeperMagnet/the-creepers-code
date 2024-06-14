# Summons a snail

playsound tcc:entity.snail.unbucket neutral @a[distance=..16]
data remove storage tcc:temp root
execute if predicate tcc:entity_properties/slots/weapon.mainhand/snail_bucket run data modify storage tcc:temp root.snail_bucket set from entity @s SelectedItem
execute unless predicate tcc:entity_properties/slots/weapon.mainhand/snail_bucket run data modify storage tcc:temp root.snail_bucket set from entity @s Inventory[{Slot:-106b}]
function tcc:entity/snail/summon/spawn

# Replace mainhand/offhand with bucket depending on predicate
execute if predicate tcc:entity_properties/slots/weapon.mainhand/snail_bucket run return run item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:bucket
item replace entity @s[gamemode=!creative] weapon.offhand with minecraft:bucket