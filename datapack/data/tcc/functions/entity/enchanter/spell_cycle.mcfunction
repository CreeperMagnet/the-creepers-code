############################################################
# Makes animations and such for a spell-casting cycle
############################################################

scoreboard players add @s[scores={tcc.dummy2=0..}] tcc.dummy2 1
execute if entity @s[scores={tcc.dummy2=3..}] run function tcc:entity/enchanter/spell_finish
execute rotated ~ 0 run particle minecraft:enchant ^0.75 ^2 ^ 0.1 0.1 0.1 0 5 force
execute rotated ~ 0 run particle minecraft:enchant ^-0.75 ^2 ^ 0.1 0.1 0.1 0 5 force