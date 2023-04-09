############################################################
# Starts a line of sight raycast
############################################################

tag @s remove tcc.has_line_of_sight
execute anchored eyes facing entity @e[predicate=tcc:entity/illager_target,limit=1,distance=..16,sort=nearest] eyes run function tcc:entity/illager/line_of_sight_raycast
execute if entity @s[tag=tcc.has_line_of_sight] run tag @s add tcc.spellcasting
execute if entity @s[tag=tcc.has_line_of_sight,tag=tcc.geomancer] unless entity @s[scores={tcc.dummy2=0..3}] run playsound tcc:entity.geomancer.attack hostile @a[distance=..16]
execute if entity @s[tag=tcc.has_line_of_sight,tag=tcc.iceologer] unless entity @s[scores={tcc.dummy2=0..3}] run playsound tcc:entity.iceologer.attack hostile @a[distance=..16]
