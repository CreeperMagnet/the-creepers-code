############################################################
# Edits tags and id of the exported item
############################################################

data modify entity @s Item set from storage tcc:storage root.temp.export_items[0]
tag @s remove tcc.replace_item
