############################################################
# Adds a tag to players riding striders
############################################################

execute if entity @s[predicate=tcc:entity/holding/custom_warped_fungus_on_a_stick] run effect give @e[type=strider,dy=0,limit=1] slowness 1 255 true
execute unless data entity @s RootVehicle run tag @s remove tcc.on_strider