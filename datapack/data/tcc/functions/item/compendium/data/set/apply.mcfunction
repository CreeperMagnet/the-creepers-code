############################################################
# Set modified player compendium data
############################################################

# Transfer temp player data to global player data
execute unless data storage tcc:storage root.temp.compendium.uuid run data modify storage tcc:storage root.temp.compendium.uuid set from storage tcc:storage root.temp.manage_data.uuid
$data modify storage tcc:storage root.compendium.player_data[{uuid:$(uuid)}] set from storage tcc:storage root.temp.compendium
