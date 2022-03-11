############################################################
# Commands to increment the break state of a gobblerift when hurt
############################################################

execute if entity @s[nbt={ArmorItems:[{tag:{tcc:{gobblerift_break_state:2}}}]}] run function tcc:block/gobblerift/break
execute if entity @s[nbt={ArmorItems:[{tag:{tcc:{gobblerift_break_state:1}}}]}] run data modify entity @s ArmorItems[3].tag.tcc.gobblerift_break_state set value 2
execute if entity @s[nbt={ArmorItems:[{tag:{tcc:{gobblerift_break_state:0}}}]}] run data modify entity @s ArmorItems[3].tag.tcc.gobblerift_break_state set value 1