############################################################
# Functions to run to check if an armor stand-based block needs to be lit or not
############################################################

data remove entity @s HasVisualFire
execute if block ~ ~1 ~ #tcc:opaque if block ~ ~2 ~ #tcc:opaque run data modify entity @s HasVisualFire set value 1b