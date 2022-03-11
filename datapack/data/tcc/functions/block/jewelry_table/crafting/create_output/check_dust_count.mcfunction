############################################################
# Checks recipes inputted into the jewelry table
############################################################

# Store amethyst dust count
execute store result score @s tcc.dummy run data get storage tcc:storage root.temp.barrel_data[1][{Slot:22b}].Count

# Check if amethyst dust is enough for each ring
execute if score @s tcc.dummy matches 1.. if data storage tcc:storage root.temp.barrel_data[1][{Slot:2b,id:"minecraft:gold_ingot"}] run function tcc:block/jewelry_table/crafting/create_output/metals/gold
execute if score @s tcc.dummy matches 3.. if data storage tcc:storage root.temp.barrel_data[1][{Slot:2b,id:"minecraft:iron_ingot"}] run function tcc:block/jewelry_table/crafting/create_output/metals/iron
execute if score @s tcc.dummy matches 5.. if data storage tcc:storage root.temp.barrel_data[1][{Slot:2b,id:"minecraft:netherite_ingot"}] run function tcc:block/jewelry_table/crafting/create_output/metals/netherite
function #tcc:dynamic_rings/check_dust_count