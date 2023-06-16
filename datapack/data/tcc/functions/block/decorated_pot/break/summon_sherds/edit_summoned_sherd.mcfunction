############################################################
# Edits tags and id of the summoned sherd
############################################################

data modify entity @s Item set from storage tcc:storage root.temp.sherds[0]
tag @s remove tcc.replace_item
