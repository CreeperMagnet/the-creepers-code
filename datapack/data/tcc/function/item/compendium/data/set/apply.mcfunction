# Set modified player compendium data

# Transfer temp player data to global player data
execute unless data storage tcc:temp root.compendium.uuid run data modify storage tcc:temp root.compendium.uuid set from storage tcc:temp root.manage_data.uuid
$data modify storage tcc:compendium player_data[{uuid:$(uuid)}] set from storage tcc:temp root.compendium
