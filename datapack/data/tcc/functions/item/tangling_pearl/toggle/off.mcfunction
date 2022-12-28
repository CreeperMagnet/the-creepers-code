############################################################
# Changes the enabled status
############################################################

data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330240
data modify storage tcc:storage root.temp.item.tag.tcc.enabled set value 0b
playsound tcc:item.tangling_pearl.deactivate player @a[distance=..16]