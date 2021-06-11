############################################################
# Description: Juices a gobblerift, setting tags and visuals
# Creator: CreeperMagnet_
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item.riftjuice set value {pos:[0,0,0],uuid:0,dimension:"unknown"}
execute store result storage tcc:storage root.temp.item.riftjuice.pos[0] int 1 run data get entity @s Pos[0]
execute store result storage tcc:storage root.temp.item.riftjuice.pos[1] int 1 run data get entity @s Pos[1]
execute store result storage tcc:storage root.temp.item.riftjuice.pos[2] int 1 run data get entity @s Pos[2]
execute store result storage tcc:storage root.temp.item.riftjuice.uuid int 1 run data get entity @s UUID[0]

function #tcc:riftjuice_dimensions/gobblerift_set_dimensions
execute unless entity @s[nbt={CustomName:'{"translate":"block.tcc.gobblerift"}'}] run data modify storage tcc:storage root.temp.item.custom_name set from entity @s CustomName

execute if entity @s[tag=!tcc.silent] run playsound tcc:block.gobblerift.fill_bottle block @a[distance=..16]
data modify entity @s HandItems[0].tag.CustomModelData set value 330040
tag @s remove tcc.gobblerift.juice_ready
tag @s add tcc.gobblerift.hungry
tag @s add tcc.gobblerift.can_love
