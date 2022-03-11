############################################################
# Grow a gobblerift
############################################################

scoreboard players set @s tcc.dummy2 0
execute if entity @s[nbt={ArmorItems:[{tag:{tcc:{custom_model_data:{idle:330030}}}}]}] run function tcc:block/gobblerift/set_state/hungry
data modify entity @s[nbt={ArmorItems:[{tag:{tcc:{custom_model_data:{idle:330028}}}}]}] ArmorItems[3].tag.tcc.custom_model_data.idle set value 330030
data modify entity @s[nbt={ArmorItems:[{tag:{tcc:{custom_model_data:{idle:330026}}}}]}] ArmorItems[3].tag.tcc.custom_model_data.idle set value 330028
data modify entity @s[nbt={ArmorItems:[{tag:{tcc:{custom_model_data:{idle:330024}}}}]}] ArmorItems[3].tag.tcc.custom_model_data.idle set value 330026
data modify entity @s[nbt={ArmorItems:[{tag:{tcc:{custom_model_data:{idle:330022}}}}]}] ArmorItems[3].tag.tcc.custom_model_data.idle set value 330024
tag @s[nbt={ArmorItems:[{tag:{tcc:{custom_model_data:{idle:330028}}}}]}] add tcc.gobblerift.tall

