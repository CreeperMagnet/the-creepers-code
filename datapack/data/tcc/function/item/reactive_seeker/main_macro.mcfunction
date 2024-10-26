# Runs proper commands based on given slot and raw slot

# Put base item in storage
$data modify storage tcc:temp root.item set from entity @s $(slot_raw)
$data modify storage tcc:temp root.item.slot set value '$(slot)'
# Put the stored item in storage
data modify storage tcc:temp root.stored_item set from storage tcc:temp root.item

# Replace mainhand with map and then bring back what was previously in that slot
$loot replace entity @s $(slot) loot tcc:technical/map/reactive_seeker
$data modify storage tcc:temp root.map set from entity @s $(slot_raw)
function tcc:technical/macros/loot/replace with storage tcc:temp root.stored_item

# Edit item stored in temp
data merge storage tcc:temp {root:{item:{id:"minecraft:compass",count:1,components:{"minecraft:lodestone_tracker":{target:{pos:[0,7,0],dimension:"minecraft:the_nether"},tracked:0b},"minecraft:item_model":"tcc:reactive_seeker/main","minecraft:custom_name":"{\"translate\":\"item.tcc.reactive_seeker\",\"italic\":false}","minecraft:max_stack_size":1}}}}
execute store result storage tcc:temp root.item.components."minecraft:lodestone_tracker".target.pos[0] int 1.0 run data get storage tcc:temp root.map.components."minecraft:map_decorations".+.x
execute store result storage tcc:temp root.item.components."minecraft:lodestone_tracker".target.pos[2] int 1.0 run data get storage tcc:temp root.map.components."minecraft:map_decorations".+.z

# Invalid lodestone tracker if map finds nothing
execute unless data storage tcc:temp root.map{id:"minecraft:filled_map"} run data remove storage tcc:temp root.item.components."minecraft:lodestone_tracker".target

# Give self the actual reactive seeker item & reduce mainhand count
$item modify entity @s[gamemode=!creative] $(slot) tcc:reduce_count
$execute unless data entity @s $(slot_raw) run return run function tcc:technical/macros/loot/replace with storage tcc:temp root.item
execute unless predicate tcc:entity_properties/full_inventory run return run function tcc:technical/macros/loot/give with storage tcc:temp root.item
function tcc:technical/macros/loot/spawn with storage tcc:temp root.item

