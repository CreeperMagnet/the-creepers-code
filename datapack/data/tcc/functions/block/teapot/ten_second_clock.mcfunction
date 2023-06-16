############################################################
# Runs off teapots every 10s
############################################################

data modify entity @s[type=item_display] item.tag.break_state set value 0
kill @s[type=interaction,predicate=!tcc:entity/in_vehicle]
execute if entity @s[type=item_display,predicate=!tcc:entity/has_passenger] run function tcc:block/teapot/break