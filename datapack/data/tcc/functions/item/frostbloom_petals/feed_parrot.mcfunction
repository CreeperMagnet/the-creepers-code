############################################################
# Description: Commands for being a cruel person
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/entity/frostbloom_petals_parrot
execute as @e[tag=!global.ignore,type=item,sort=arbitrary,distance=..10,nbt={Item:{id:"minecraft:feather"},PickupDelay:10s}] at @s run loot spawn ~ ~ ~ loot tcc:entities/parrot_frostbloom_petals
