############################################################
# Turns a mob drop into GOLDDDD
############################################################

execute as @a[tag=tcc.scheduled.cursed_crown] at @s as @e[tag=!smithed.entity,distance=..10,type=item,nbt={PickupDelay:10s},predicate=!tcc:item/cursed_crown_ignored_items] run data modify entity @s Item set value {id:"minecraft:gold_nugget",Count:1b}
tag @a remove tcc.scheduled.cursed_crown
