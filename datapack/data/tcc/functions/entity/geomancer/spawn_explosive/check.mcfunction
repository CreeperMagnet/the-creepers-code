############################################################
# Description: Summons a pillar if the conditions are right
# Creator: CreeperMagnet_
############################################################

execute unless entity @e[team=tcc.antivillager,dx=0,dy=0,dz=0] if block ~ ~-1 ~ #tcc:opaque if block ~ ~ ~ #tcc:replaceable if block ~ ~1 ~ #tcc:replaceable if block ~ ~2 ~ #tcc:replaceable run function tcc:block/geomancer_pillars/explosive/place
