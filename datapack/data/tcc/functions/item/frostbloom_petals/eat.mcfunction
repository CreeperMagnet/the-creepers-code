############################################################
# Description: Makes frostbloom petals work
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/frostbloom_petals

title @s[tag=!global.ignore.gui,nbt=!{ActiveEffects:[{Id:2b,Amplifier:1b}]}] times 30 600 30
title @s[tag=!global.ignore.gui,nbt={ActiveEffects:[{Id:2b,Amplifier:1b}]}] times 0 600 30
title @s[tag=!global.ignore.gui] title {"translate":"entity.tcc.iceologer.ice_overlay","font":"tcc:iceologer_ice"}
effect give @s slowness 30 1 false
effect give @s regeneration 15 0 false
effect give @s saturation 1 0 true
