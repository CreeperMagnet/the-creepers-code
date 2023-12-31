############################################################
# Checks if a player's UUID matches one in storage
############################################################

$execute if entity @s[nbt={UUID:$(UUID)}] run function tcc:item/boomerang/entity_interaction/pickup/pickup
$execute unless entity @s[nbt={UUID:$(UUID)}] run damage @s 4.0 tcc:boomerang by @p[nbt={UUID:$(UUID)}]