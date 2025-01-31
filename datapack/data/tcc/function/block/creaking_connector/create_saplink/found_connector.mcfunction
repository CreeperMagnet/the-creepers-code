# Gives the actual saplink item

data remove storage tcc:temp root
data modify storage tcc:temp root set from block ~ ~ ~ components."minecraft:custom_data"
data modify storage tcc:temp root.sapling_id set from entity @s SelectedItem.id

item modify entity @s[gamemode=!creative] weapon.mainhand tcc:reduce_count
function tcc:block/creaking_connector/create_saplink/give_item with storage tcc:temp root
playsound tcc:block.creaking_connector.bind_saplink block