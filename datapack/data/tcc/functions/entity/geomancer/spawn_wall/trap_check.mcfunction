############################################################
# Description: Traps a player using normal geomancer pillars
# Creator: CreeperMagnet_
############################################################

execute unless entity @e[dx=0,dy=2,dz=0,team=tcc.antivillager] if block ~ ~-1 ~ #tcc:opaque if block ~ ~ ~ #tcc:replaceable if block ~ ~1 ~ #tcc:replaceable if block ~ ~2 ~ #tcc:replaceable run function tcc:block/geomancer_pillars/normal/place
execute unless block ~ ~-1 ~ #tcc:opaque positioned ~ ~-1 ~ unless entity @e[dx=0,dy=2,dz=0,team=tcc.antivillager] if block ~ ~-1 ~ #tcc:opaque if block ~ ~ ~ #tcc:replaceable if block ~ ~1 ~ #tcc:replaceable if block ~ ~2 ~ #tcc:replaceable run function tcc:block/geomancer_pillars/normal/place
execute unless block ~ ~-1 ~ #tcc:opaque unless block ~ ~-2 ~ #tcc:opaque positioned ~ ~-2 ~ unless entity @e[dx=0,dy=2,dz=0,team=tcc.antivillager] if block ~ ~-1 ~ #tcc:opaque if block ~ ~ ~ #tcc:replaceable if block ~ ~1 ~ #tcc:replaceable if block ~ ~2 ~ #tcc:replaceable run function tcc:block/geomancer_pillars/normal/place
execute unless block ~ ~ ~ #tcc:replaceable positioned ~ ~1 ~ unless entity @e[dx=0,dy=2,dz=0,team=tcc.antivillager] if block ~ ~-1 ~ #tcc:opaque if block ~ ~ ~ #tcc:replaceable if block ~ ~1 ~ #tcc:replaceable if block ~ ~2 ~ #tcc:replaceable run function tcc:block/geomancer_pillars/normal/place
execute unless block ~ ~ ~ #tcc:replaceable unless block ~ ~1 ~ #tcc:replaceable positioned ~ ~2 ~ unless entity @e[dx=0,dy=2,dz=0,team=tcc.antivillager] if block ~ ~-1 ~ #tcc:opaque if block ~ ~ ~ #tcc:replaceable if block ~ ~1 ~ #tcc:replaceable if block ~ ~2 ~ #tcc:replaceable run function tcc:block/geomancer_pillars/normal/place
