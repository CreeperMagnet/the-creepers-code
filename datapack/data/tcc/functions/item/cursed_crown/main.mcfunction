############################################################
# Description: Turns a mob drop into GOLDDDD
# Creator: CreeperMagnet_
############################################################

execute if entity @s[gamemode=!creative] run function tcc:item/cursed_crown/damage
tag @s[advancements={tcc:technical/item/cursed_crown={killed_entity=true}}] add tcc.scheduled.cursed_crown
execute if entity @s[advancements={tcc:technical/item/cursed_crown={killed_entity=true}}] run schedule function tcc:item/cursed_crown/schedule 1t append
advancement revoke @s only tcc:technical/item/cursed_crown
