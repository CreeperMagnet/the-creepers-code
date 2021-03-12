############################################################
# Description: Commands to run when you're hit
# Creator: CreeperMagnet_
############################################################


execute if entity @s[gamemode=!spectator,gamemode=!creative] run function tcc:item/item_modification/durability/damage/offhand
advancement revoke @s[advancements={tcc:technical/item/rings/attack_damaging=true}] only tcc:technical/item/rings/attack_damaging
