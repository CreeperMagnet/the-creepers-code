############################################################
# Summons a snail
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.snail_bucket set from entity @s SelectedItem
function tcc:entity/snail/summon/spawn
item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:bucket
playsound tcc:entity.snail.unbucket neutral @a[distance=..16]