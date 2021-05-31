############################################################
# Description: Soaks an item in a potion effect
# Creator: CreeperMagnet_
############################################################

execute if entity @s[nbt={Item:{tag:{tcc:{id:"ring"}}}}] run function tcc:entity/area_effect_cloud/soak_ring
execute unless entity @s[nbt={Item:{tag:{tcc:{id:"ring"}}}}] unless data entity @s Item.tag.CustomModelData run function tcc:entity/area_effect_cloud/tip_sword
