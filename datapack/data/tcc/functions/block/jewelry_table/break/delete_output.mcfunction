############################################################
# Destroys the output so dupe bugs don't occur
############################################################

data modify storage tcc:storage root.temp.output_item_temp set from storage tcc:storage root.temp.output_item
execute store success score @s tcc.dummy run data modify storage tcc:storage root.temp.output_item_temp set from entity @s Item
kill @s[scores={tcc.dummy=0}]
