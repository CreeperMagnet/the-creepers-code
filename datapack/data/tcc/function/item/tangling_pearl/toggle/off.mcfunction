# Changes the enabled status

data modify storage tcc:temp root.item.components."minecraft:custom_model_data".flags[0] set value false
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.enabled set value 0b
playsound tcc:item.tangling_pearl.deactivate player @a[distance=..16]