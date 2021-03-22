############################################################
# Description: Turns a mob drop into GOLDDDD
# Creator: CreeperMagnet_
############################################################

execute as @a[tag=tcc.scheduled.cursed_crown] at @s as @e[tag=!global.ignore,sort=arbitrary,distance=..10,type=item,nbt={PickupDelay:10s},predicate=!tcc:cursed_crown_ignored_items] run data modify entity @s Item set value {id:"minecraft:gold_nugget",Count:1b}
execute as @a[tag=tcc.scheduled.cursed_crown] run tag @s remove tcc.scheduled.cursed_crown
