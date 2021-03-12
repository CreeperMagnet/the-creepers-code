############################################################
# Description: Calculates resistance into the damage formula
# Creator: ICY / CreeperMagnet_
############################################################

# Get the amplifier
execute store result score tcc.temp_0 tcc.dummy run data get entity @s ActiveEffects[{Id:11b}].Amplifier
scoreboard players add tcc.temp_0 tcc.dummy 1


# Subtract the amplifier from 5 to get the proper fraction (for example, 4 -> 1, or 1/5 damage amount)
scoreboard players set tcc.temp_1 tcc.dummy 5
scoreboard players operation tcc.temp_1 tcc.dummy -= tcc.temp_0 tcc.dummy

scoreboard players operation tcc.damage tcc.dummy *= tcc.temp_1 tcc.dummy
scoreboard players operation tcc.damage tcc.dummy /= tcc.const.5 tcc.dummy
