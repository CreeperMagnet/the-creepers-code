############################################################
# Description: Makes obsidian scythe durability work
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.minebeets=1..}] run function tcc:item/item_modification/durability/damage/mainhand
execute if entity @s[scores={tcc.minepotatoes=1..}] run function tcc:item/item_modification/durability/damage/mainhand
execute if entity @s[scores={tcc.minewheat=1..}] run function tcc:item/item_modification/durability/damage/mainhand
execute if entity @s[scores={tcc.minecarrots=1..}] run function tcc:item/item_modification/durability/damage/mainhand
execute if entity @s[scores={tcc.minewarts=1..}] run function tcc:item/item_modification/durability/damage/mainhand
execute if entity @s[scores={tcc.minebeets=1..},predicate=!tcc:sneaking] as @e[tag=!global.ignore,type=item,limit=1,nbt={PickupDelay:10s,Item:{id:"minecraft:beetroot"}},sort=nearest] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function tcc:item/obsidian_scythe/reap_beets
execute if entity @s[scores={tcc.minewheat=1..},predicate=!tcc:sneaking] as @e[tag=!global.ignore,type=item,limit=1,nbt={PickupDelay:10s,Item:{id:"minecraft:wheat"}},sort=nearest] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function tcc:item/obsidian_scythe/reap_wheat
execute if entity @s[scores={tcc.minepotatoes=1..},predicate=!tcc:sneaking] as @e[tag=!global.ignore,type=item,limit=1,nbt={PickupDelay:10s,Item:{id:"minecraft:potato"}},sort=nearest] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function tcc:item/obsidian_scythe/reap_potatoes
execute if entity @s[scores={tcc.minecarrots=1..},predicate=!tcc:sneaking] as @e[tag=!global.ignore,type=item,limit=1,nbt={PickupDelay:10s,Item:{id:"minecraft:carrot"}},sort=nearest] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function tcc:item/obsidian_scythe/reap_carrots
execute if entity @s[scores={tcc.minewarts=1..},predicate=!tcc:sneaking] as @e[tag=!global.ignore,type=item,limit=1,nbt={PickupDelay:10s,Item:{id:"minecraft:nether_wart"}},sort=nearest] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function tcc:item/obsidian_scythe/reap_nether_wart
