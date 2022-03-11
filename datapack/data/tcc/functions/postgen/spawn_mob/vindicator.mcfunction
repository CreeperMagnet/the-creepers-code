############################################################
# Summons a mob
############################################################

setblock ~ ~ ~ air
summon vindicator ~ ~ ~ {PersistenceRequired:1b,HandItems:[{id:"minecraft:iron_axe",Count:1b}],Attributes:[{Base:7.0d,Name:"minecraft:generic.follow_range"}]}
