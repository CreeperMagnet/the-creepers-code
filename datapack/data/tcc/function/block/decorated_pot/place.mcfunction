# Commands to place a decorated pot
data remove storage tcc:temp root
# east, south, west, north
execute if entity @s[y_rotation=-135..-45] run data modify storage tcc:temp root.macro_input.rotation set value [270.0f,0.0f]
execute if entity @s[y_rotation=-45..45] run data modify storage tcc:temp root.macro_input.rotation set value [0.0f,0.0f]
execute if entity @s[y_rotation=45..135] run data modify storage tcc:temp root.macro_input.rotation set value [90.0f,0.0f]
execute if entity @s[y_rotation=135..225] run data modify storage tcc:temp root.macro_input.rotation set value [180.0f,0.0f]

# Get the data from the player into storage
execute if items entity @s weapon.offhand minecraft:decorated_pot[minecraft:custom_data~{tcc:{id:"decorated_pot"}}] run data modify storage tcc:temp root.macro_input.item set from entity @s equipment.offhand
# The mainhand overrides the offhand
execute if items entity @s weapon.mainhand minecraft:decorated_pot[minecraft:custom_data~{tcc:{id:"decorated_pot"}}] run data modify storage tcc:temp root.macro_input.item set from entity @s SelectedItem

# Summon the display entity using the player's data
data remove storage tcc:temp root.macro_input.item.count
data modify storage tcc:temp root.macro_input.model set from storage tcc:temp root.macro_input.item.components."minecraft:item_model"
data modify storage tcc:temp root.macro_input.model_data set from storage tcc:temp root.macro_input.item.components."minecraft:custom_model_data"

# Setblocks the proper block
function tcc:block/decorated_pot/place_macro with storage tcc:temp root.macro_input

tag @s remove tcc.tag
execute if block ~ ~ ~ minecraft:decorated_pot[waterlogged=true] run tag @s add tcc.tag
setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=tcc.tag] run setblock ~ ~ ~ minecraft:decorated_pot[waterlogged=true]{sherds:["minecraft:air","minecraft:air","minecraft:air","minecraft:air"],components:{"minecraft:custom_data":{"tcc":{"id":"decorated_pot"}}}}
execute unless entity @s[tag=tcc.tag] run setblock ~ ~ ~ minecraft:decorated_pot[waterlogged=false]{sherds:["minecraft:air","minecraft:air","minecraft:air","minecraft:air"],components:{"minecraft:custom_data":{"tcc":{"id":"decorated_pot"}}}}
tag @s remove tcc.tag
