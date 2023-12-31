############################################################
# Commands for the effects a nether reactor gives out
############################################################

effect clear @s[nbt={active_effects:[{id:"minecraft:wither",amplifier:0b}]}] minecraft:wither
effect give @s[type=!minecraft:strider] minecraft:fire_resistance 60 0 true
effect give @s[type=minecraft:strider] minecraft:speed 30 2 true
execute if predicate manic:installed run tag @s[type=minecraft:player] add manic.scheduled.beacon_sanity