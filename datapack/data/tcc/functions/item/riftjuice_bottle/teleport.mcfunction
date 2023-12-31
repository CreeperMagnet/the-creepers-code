############################################################
# Makes riftjuice teleportation cross-dimensionally work properly, and also adds a failsafe condition
############################################################

particle dragon_breath ~ ~ ~ 0.5 1 0.5 0.05 100 force
playsound tcc:block.gobblerift.teleport_player block @a[distance=..16]
data remove storage tcc:storage root.temp.macro_input
data modify storage tcc:storage root.temp.macro_input.x set from storage tcc:storage root.temp.riftjuice.pos[0]
data modify storage tcc:storage root.temp.macro_input.y set from storage tcc:storage root.temp.riftjuice.pos[1]
data modify storage tcc:storage root.temp.macro_input.z set from storage tcc:storage root.temp.riftjuice.pos[2]
data modify storage tcc:storage root.temp.macro_input.dimension set from storage tcc:storage root.temp.riftjuice.dimension
function tcc:technical/macros/teleport with storage tcc:storage root.temp.macro_input
execute at @s run particle dragon_breath ~ ~ ~ 0.5 1 0.5 0.05 100 force
execute at @s run playsound tcc:block.gobblerift.teleport_player block @a[distance=..16]