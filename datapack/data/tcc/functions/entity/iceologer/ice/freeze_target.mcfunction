############################################################
# Freezes the player
############################################################

title @s[nbt=!{ActiveEffects:[{Id:2}]}] times 10t 80t 10t
title @s[nbt={ActiveEffects:[{Id:2}]}] times 0t 80t 10t
title @s title {"translate":"entity.tcc.iceologer.ice_overlay","font":"tcc:iceologer_ice"}
damage @s 1.0 tcc:iceologer_ice by @e[tag=tcc.iceologer_damage_source,type=wandering_trader,limit=1]
effect give @s slowness 4 0 false
