############################################################
# Adds 2 absorption hearts to the player's hearts
############################################################

advancement revoke @s only tcc:technical/consume_item/golden_apple
execute store result score @s tcc.dummy run data get entity @s AbsorptionAmount 100
effect clear @s[scores={tcc.dummy=200..1900}] minecraft:absorption
effect give @s[scores={tcc.dummy=400..799}] absorption 300 1
effect give @s[scores={tcc.dummy=800..1100}] absorption 300 2
effect give @s[scores={tcc.dummy=1101..1500}] absorption 300 3
effect give @s[scores={tcc.dummy=1501..1900}] absorption 300 4
effect give @s[scores={tcc.dummy=1901..}] resistance 300 0
