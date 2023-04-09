############################################################
# Functions to update light levels for a custom block
############################################################

data remove entity @s brightness
scoreboard players set @s tcc.dummy 0
execute if block ~ ~ ~ #tcc:opaque align xyz positioned ~ ~-0.5 ~ run function tcc:block/update_light/edit_brightness