############################################################
# Starts a line of sight raycast
############################################################

tag @s remove tcc.has_line_of_sight
execute anchored eyes facing entity @p[gamemode=!creative,gamemode=!spectator,distance=..16,nbt=!{Health:0.0f}] eyes run function tcc:entity/illager/line_of_sight_raycast
execute if entity @s[tag=tcc.has_line_of_sight] run tag @s add tcc.spellcasting
execute if entity @s[tag=tcc.has_line_of_sight] unless entity @s[scores={tcc.dummy2=0..3}] run playsound tcc:entity.iceologer.attack hostile @a[distance=..16]
