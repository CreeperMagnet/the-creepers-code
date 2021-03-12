############################################################
# Description: Moves the boomerang one block
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 0
execute if entity @s[nbt={ArmorItems:[{tag:{tcc:{id:"spectral_boomerang"}}}]}] run function tcc:item/boomerang/iterate_spectral
execute if entity @s[nbt=!{ArmorItems:[{tag:{tcc:{id:"spectral_boomerang"}}}]}] run function tcc:item/boomerang/iterate
scoreboard players add @s tcc.dummy2 1
tag @s remove tcc.boomerang.bounce
function tcc:item/boomerang/sound
execute as @e[type=enderman,distance=..2,sort=arbitrary,tag=!global.ignore] run function tcc:item/boomerang/enderman_artificial_teleport