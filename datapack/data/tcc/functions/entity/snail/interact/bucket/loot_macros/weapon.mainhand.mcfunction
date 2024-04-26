# Give self a specific id of item with a specific tag

$loot replace entity @s weapon.mainhand loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:loot_table","value":"tcc:items/snail_bucket","functions":[{"function":"minecraft:set_components","components":$(components)}]}]}]}