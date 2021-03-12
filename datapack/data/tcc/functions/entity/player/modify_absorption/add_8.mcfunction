############################################################
# Description: Adds 8 hearts of absorption to the player's hearts
# Creator: CreeperMagnet_
############################################################
advancement revoke @s only tcc:technical/potions/absorption/add_8
execute store result score @s tcc.dummy run data get entity @s AbsorptionAmount 100
effect give @s[scores={tcc.dummy=200..1900}] absorption 300 4
effect give @s[scores={tcc.dummy=1901..}] resistance 300 1