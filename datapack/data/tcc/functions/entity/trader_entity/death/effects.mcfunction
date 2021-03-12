############################################################
# Description: Where were you when trader entity was kil?
# Creator: CreeperMagnet_
############################################################

particle minecraft:poof ~ ~1 ~ 0.2 0.5 0.2 0 20 normal
summon experience_orb ~ ~ ~ {Value:2s}
summon experience_orb ~ ~ ~ {Value:1s}
function tcc:entity/trader_entity/sounds/death
kill @s
