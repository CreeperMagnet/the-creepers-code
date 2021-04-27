############################################################
# Description: Commands to run off a snail every second
# Creator: CreeperMagnet_
############################################################

execute if entity @s[predicate=!tcc:wandering_trader_night,predicate=tcc:chance/one_sixtieth,predicate=tcc:chance/one_third] run loot spawn ~ ~ ~ loot tcc:items/snail_mucus
execute if entity @s[predicate=tcc:wandering_trader_night,predicate=tcc:chance/one_sixtieth] run loot spawn ~ ~ ~ loot tcc:items/snail_mucus
execute if entity @s[predicate=tcc:snail_hurt_areas] run function tcc:entity/snail/biome_hurt
