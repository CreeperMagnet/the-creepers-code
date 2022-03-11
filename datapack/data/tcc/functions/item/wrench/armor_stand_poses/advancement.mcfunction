############################################################
# Advancements to run when players use a wrench on an armor stand
############################################################

data remove storage tcc:storage root.temp

tag @s remove tcc.tag
execute anchored eyes run function tcc:item/wrench/armor_stand_poses/raycast
loot replace entity @s[tag=tcc.tag] weapon.mainhand loot tcc:technical/copy_nbt/carrot_on_a_stick
tag @s remove tcc.tag

advancement revoke @s only tcc:technical/player_interacted_with_entity/armor_stand_wrench