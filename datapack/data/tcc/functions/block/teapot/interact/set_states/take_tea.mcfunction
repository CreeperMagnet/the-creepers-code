############################################################
# Description: Empties a teapot, setting tags and visuals
# Creator: CreeperMagnet_
############################################################

execute if entity @s[tag=tcc.teapot.filled_warped_wart] run data modify storage tcc:storage root.temp.tea set value "amenable"
execute if entity @s[tag=tcc.teapot.filled_antitoxin_tea] run data modify storage tcc:storage root.temp.tea set value "antitoxin"
execute if entity @s[tag=tcc.teapot.filled_clearsight_tea] run data modify storage tcc:storage root.temp.tea set value "clearsight"
execute if entity @s[tag=tcc.teapot.filled_obscurity_tea] run data modify storage tcc:storage root.temp.tea set value "obscurity"
execute if entity @s[tag=tcc.teapot.filled_plenty_tea] run data modify storage tcc:storage root.temp.tea set value "plenty"
execute if entity @s[tag=tcc.teapot.filled_purity_tea] run data modify storage tcc:storage root.temp.tea set value "purity"
execute if entity @s[tag=tcc.teapot.filled_serendipity_tea] run data modify storage tcc:storage root.temp.tea set value "serendipity"
execute if entity @s[tag=tcc.teapot.filled_stability_tea] run data modify storage tcc:storage root.temp.tea set value "stability"
execute if entity @s[tag=tcc.teapot.filled_steadiness_tea] run data modify storage tcc:storage root.temp.tea set value "steadiness"
execute if entity @s[tag=tcc.teapot.filled_vigor_tea] run data modify storage tcc:storage root.temp.tea set value "vigor"
execute if entity @s[tag=tcc.teapot.filled_vitality_tea] run data modify storage tcc:storage root.temp.tea set value "vitality"
execute if entity @s[tag=tcc.teapot.filled_vivacity_tea] run data modify storage tcc:storage root.temp.tea set value "vivacity"
function tcc:block/teapot/interact/set_states/empty