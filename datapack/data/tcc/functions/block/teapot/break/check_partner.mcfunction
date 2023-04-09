############################################################
# Checks to make sure that interactions have item displays and vice versa
############################################################

kill @s[type=interaction,predicate=!tcc:entity/in_vehicle]
execute if entity @s[type=item_display,predicate=!tcc:entity/has_passenger] run function tcc:block/teapot/break/main