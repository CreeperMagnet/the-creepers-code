############################################################
# Makes rotten porkchops give you nausea
############################################################

data merge entity @s {AngerTime:800,AngryAt:[I; 0, 0, 0, 0]}
data modify entity @s AngryAt set from storage tcc:storage root.temp.rotten_porkchop_anger