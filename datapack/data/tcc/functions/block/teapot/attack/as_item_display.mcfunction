############################################################
# Commands to increment the break state of a gobblerift when hurt
############################################################

playsound tcc:block.teapot.hit block @a[distance=..16]
particle minecraft:item minecraft:structure_block{CustomModelData:330086} ~ ~0.5 ~ 0.2 0.3 0.2 0 15 normal
execute if data storage tcc:storage root.temp.instamine run function tcc:block/teapot/break
execute if entity @s[nbt={item:{tag:{break_state:2}}}] run function tcc:block/teapot/break
execute if entity @s[nbt={item:{tag:{break_state:1}}}] run data modify entity @s item.tag.break_state set value 2
execute if entity @s[nbt={item:{tag:{break_state:0}}}] run data modify entity @s item.tag.break_state set value 1