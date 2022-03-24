############################################################
# Commands for the effects a nether reactor gives out
############################################################

effect clear @s[nbt={ActiveEffects:[{Id:20b,Amplifier:0b}]}] minecraft:wither
effect give @s[type=!minecraft:strider] minecraft:fire_resistance 60 0 true
effect give @s[type=minecraft:strider] minecraft:speed 30 2 true
scoreboard players add @s[type=player] manic.sanity 1