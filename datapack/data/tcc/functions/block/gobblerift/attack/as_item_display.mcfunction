# Commands to increment the break state of a gobblerift when hurt

playsound tcc:block.gobblerift.hurt neutral @a[distance=..16]
execute if data storage tcc:storage root.temp.instamine run function tcc:block/gobblerift/break/main
execute if entity @s[nbt={item:{tag:{break_state:2}}}] run function tcc:block/gobblerift/break/main
execute if entity @s[nbt={item:{tag:{break_state:1}}}] run data modify entity @s item.tag.break_state set value 2
execute if entity @s[nbt={item:{tag:{break_state:0}}}] run data modify entity @s item.tag.break_state set value 1
scoreboard players set @s tcc.dummy2 10
execute store result entity @s item.tag.CustomModelData int -1 run data get entity @s item.tag.CustomModelData -1.0000000001
data remove entity @s attack