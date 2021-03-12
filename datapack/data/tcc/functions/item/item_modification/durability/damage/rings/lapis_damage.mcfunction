############################################################
# Description: Commands to run when you kill a mob with a lapis ring
# Creator: CreeperMagnet_
############################################################

xp add @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{gemstone:{quality:"cut"}}}}]}] 2 points
xp add @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{gemstone:{quality:"pristine"}}}}]}] 4 points
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 2
execute if entity @s[gamemode=!spectator,gamemode=!creative] run function tcc:item/item_modification/durability/damage/offhand
advancement revoke @s[advancements={tcc:technical/item/rings/lapis_damage=true}] only tcc:technical/item/rings/lapis_damage
