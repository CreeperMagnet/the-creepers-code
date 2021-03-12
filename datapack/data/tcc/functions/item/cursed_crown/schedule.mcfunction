############################################################
# Description: Turns a mob drop into GOLDDDD
# Creator: CreeperMagnet_
############################################################

execute as @a[tag=tcc.scheduled.cursed_crown] at @s as @e[tag=!global.ignore,distance=..10,type=item,nbt={PickupDelay:10s},nbt=!{Item:{id:"minecraft:nether_star"}},nbt=!{Item:{id:"minecraft:totem_of_undying"}},nbt=!{Item:{id:"minecraft:elytra"}},nbt=!{Item:{id:"minecraft:dragon_egg"}}] run data modify entity @s Item.id set value "minecraft:gold_nugget"
execute as @a[tag=tcc.scheduled.cursed_crown] at @s as @e[tag=!global.ignore,distance=..10,type=item,nbt={PickupDelay:10s},nbt=!{Item:{id:"minecraft:nether_star"}},nbt=!{Item:{id:"minecraft:totem_of_undying"}},nbt=!{Item:{id:"minecraft:elytra"}},nbt=!{Item:{id:"minecraft:dragon_egg"}}] run data modify entity @s Item.tag set value {tcc:{id:"cursed_gold"},display:{Lore:['{"translate":"item.tcc.cursed_gold.lore","color":"yellow"}']}}
execute as @a[tag=tcc.scheduled.cursed_crown] run tag @s remove tcc.scheduled.cursed_crown
