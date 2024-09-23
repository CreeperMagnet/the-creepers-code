# Sets the data of the sprouter that laid the egg

function tcc:entity/sprouter/breed/set_tags
loot spawn ~ ~ ~ loot tcc:items/sprouter_egg
summon minecraft:experience_orb ~ ~ ~ {Value:5s}
data remove storage tcc:temp root
playsound tcc:entity.sprouter.lay_egg neutral @a[distance=..16]
