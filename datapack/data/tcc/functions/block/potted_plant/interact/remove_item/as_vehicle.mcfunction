# Kills the vehicle, but not before giving its item to storage

data modify storage tcc:storage root.temp.item set from entity @s item.tag.tcc.item
kill @s
