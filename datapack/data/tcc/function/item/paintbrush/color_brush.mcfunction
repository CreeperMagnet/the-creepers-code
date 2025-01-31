# Colors a paintbrush

$clear @s[gamemode=!creative] minecraft:$(color)_dye 1
playsound tcc:item.paintbrush.paint block @a[distance=..16]
$execute if predicate tcc:entity_properties/slots/weapon.mainhand/paintbrush run return run item modify entity @s weapon.mainhand {"function":"minecraft:set_custom_model_data","strings":{"values":["$(color)"],mode:"replace_all"}}
$item modify entity @s weapon.offhand {"function":"minecraft:set_custom_model_data","strings":{"values":["$(color)"],mode:"replace_all"}}