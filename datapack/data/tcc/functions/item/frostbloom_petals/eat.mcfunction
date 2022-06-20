############################################################
# Makes frostbloom petals work
############################################################

advancement revoke @s only tcc:technical/consume_item/frostbloom_petals

title @s[nbt=!{ActiveEffects:[{Id:2,Amplifier:1b}]}] times 30 600 30
title @s[nbt={ActiveEffects:[{Id:2,Amplifier:1b}]}] times 0 600 30
title @s title {"translate":"entity.tcc.iceologer.ice_overlay","font":"tcc:iceologer_ice"}
effect give @s slowness 30 1 false
effect give @s regeneration 8 1 false
effect give @s saturation 1 0 true
scoreboard players add @s manic.sanity 80