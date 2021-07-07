############################################################
# Description: Summons a snail
# Creator: CreeperMagnet_
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.snail_bucket set from entity @s SelectedItem
execute if data storage tcc:storage root.temp.snail_bucket.tag.display{Name:'{"text":"Gary"}'} run function tcc:entity/snail/summon/set_gary
function tcc:entity/snail/summon/spawn
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{tcc:{id:"snail_bucket"}}}}] weapon.mainhand with minecraft:bucket
playsound tcc:entity.snail.unbucket neutral @a[distance=..16]
tag @s remove tcc.tag
