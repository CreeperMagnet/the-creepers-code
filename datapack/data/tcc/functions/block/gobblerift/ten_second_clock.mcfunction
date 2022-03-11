############################################################
# Commands to run every ten seconds
############################################################

data modify entity @s ArmorItems[3].tag.tcc.gobblerift_break_state set value 0
execute if entity @s[tag=tcc.gobblerift.bonemealable,predicate=!tcc:chance/one_tenth] run function tcc:block/gobblerift/grow/main
execute if entity @s[tag=tcc.gobblerift.digesting] run function tcc:block/gobblerift/grow/digest