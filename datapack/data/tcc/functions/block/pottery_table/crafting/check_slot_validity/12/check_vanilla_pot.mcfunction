############################################################
# Checks if a decorated pot has any sherds or not
############################################################

data modify storage tcc:storage root.temp.pot_check set value ["minecraft:brick","minecraft:brick","minecraft:brick","minecraft:brick"]
execute store success score @s tcc.dummy run data modify storage tcc:storage root.temp.pot_check set from block ~ ~ ~ Items[{Slot:12b}].tag.BlockEntityTag.sherds
execute if score @s tcc.dummy matches 0 run tag @s add tcc.tag