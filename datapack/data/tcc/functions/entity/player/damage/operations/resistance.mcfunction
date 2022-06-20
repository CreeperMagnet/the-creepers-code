############################################################
# Calculates resistance into the damage formula
############################################################

# Get the amplifier
execute store result score #temp_0 tcc.dummy run data get entity @s ActiveEffects[{Id:11}].Amplifier
scoreboard players add #temp_0 tcc.dummy 1


# Subtract the amplifier from 5 to get the proper fraction (for example, 4 -> 1, or 1/5 damage amount)
scoreboard players set #temp_1 tcc.dummy 5
scoreboard players operation #temp_1 tcc.dummy -= #temp_0 tcc.dummy

scoreboard players operation #damage tcc.dummy *= #temp_1 tcc.dummy
scoreboard players operation #damage tcc.dummy /= #5 tcc.dummy
