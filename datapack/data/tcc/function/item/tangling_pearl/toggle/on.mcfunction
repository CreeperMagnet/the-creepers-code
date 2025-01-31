# Changes the enabled status

data modify storage tcc:temp root.item.components."minecraft:custom_model_data".flags[0] set value true
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.enabled set value 1b
playsound tcc:item.tangling_pearl.activate player @a[distance=..16]