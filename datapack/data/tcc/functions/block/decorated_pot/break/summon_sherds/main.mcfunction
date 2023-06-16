############################################################
# Summons the sherds from a pot
############################################################

data modify storage tcc:storage root.temp.sherds set from entity @s item.tag.item_tag.tcc.sherds
function tcc:block/decorated_pot/break/summon_sherds/spawn_loop