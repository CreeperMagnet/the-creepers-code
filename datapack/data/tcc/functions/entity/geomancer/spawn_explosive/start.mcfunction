# Makes an explosive pillar at a random position near the player

tag @s remove tcc.tag
scoreboard players set @s tcc.dummy 0
function tcc:entity/geomancer/spawn_explosive/iterate
tag @s remove tcc.tag
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.pos set from entity @s Pos
