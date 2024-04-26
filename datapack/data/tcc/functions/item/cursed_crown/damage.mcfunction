# Damages the cursed crown when you get hit (and resets your cooldown)

tag @s add tcc.modifying_item
scoreboard players set @s tcc.cursed_crown_cooldown 10
execute if entity @s[gamemode=!creative,advancements={tcc:technical/entity_hurt_player/player_wearing_cursed_crown={hit_damage=true}}] run function tcc:technical/macros/damage_slot/main {slot:"armor.head",slot_raw:"Inventory[{Slot:103b}]",amount:"1"}
advancement revoke @s only tcc:technical/entity_hurt_player/player_wearing_cursed_crown
tag @s remove tcc.modifying_item
