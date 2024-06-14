# Toggles the compendium mode

# The two different modes
execute if score @s tccc.internal_trigger matches 40 run function tcc:item/compendium/toggle_unlockable/on
execute if score @s tccc.internal_trigger matches 41 run function tcc:item/compendium/toggle_unlockable/off

# Re-enable the trigger
scoreboard players enable @s[predicate=tcc:entity_properties/slots/weapon/compendium] tccc.internal_trigger
# Revoke compendium changing rights if the player is no longer holding it
execute unless predicate tcc:entity_properties/slots/weapon/compendium run tag @s remove tcc.can_change_compendium_mode
# Reset trigger score
scoreboard players set @s tccc.internal_trigger 0
