# Processes a pillager

# Is there a tundra keep within 100 blocks?
execute store result score @s tcc.dummy run locate structure tcc:tundra_keep
# If not, stop
execute if score @s tcc.dummy matches 101.. run return 0

# 10% chance for iceologer
execute if predicate tcc:random_chance/0.1 run return run function tcc:entity/iceologer/spawn

# Ominous banner-wearing pillagers get chilling banners instead
execute if predicate tcc:entity_properties/is_raid_captain run function tcc:entity/processing/cold_biome_pillager/add_chilling_banner
