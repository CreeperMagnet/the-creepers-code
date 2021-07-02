############################################################
# Description: Commands to clear elder guardian or geomancer mining fatigue
# Creator: CreeperMagnet_
############################################################

execute unless entity @e[type=elder_guardian,distance=..65] run effect clear @a[distance=..65] minecraft:mining_fatigue
advancement revoke @s only tcc:technical/entity/clear_mining_fatigue