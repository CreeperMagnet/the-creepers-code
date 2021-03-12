############################################################
# Description: Where were you when trader entity was kil?
# Creator: CreeperMagnet_
############################################################

execute as @e[sort=arbitrary,type=item,nbt={Item:{tag:{tcc:{id:"death_item"}}}}] at @s run function tcc:entity/trader_entity/death/effects
