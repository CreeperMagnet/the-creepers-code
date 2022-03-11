############################################################
# Adds 8 absorption hearts to the player's hearts
############################################################

advancement revoke @s only tcc:technical/consume_item/enchanted_golden_apple
execute store result score @s tcc.dummy run data get entity @s AbsorptionAmount 100
effect give @s[scores={tcc.dummy=200..1900}] absorption 300 4
effect give @s[scores={tcc.dummy=1901..}] resistance 300 1
