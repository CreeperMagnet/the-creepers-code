############################################################
# Commands to run as items for teleportation
############################################################

particle dust 0.067 0.608 0.522 0.4 ~ ~ ~ 0.05 0.05 0.05 200 20
data modify entity @s PickupDelay set value 0s
tp @s @p[tag=tcc.has_enabled_tangling_pearl,predicate=!tcc:entity/full_inventory]