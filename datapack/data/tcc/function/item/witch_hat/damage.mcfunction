# Commands for witch hat getting damaged

tag @s add tcc.modifying_item
function tcc:technical/macros/damage_slot/main {slot:"armor.head",slot_raw:"Inventory[{Slot:103b}]",amount:"1"}
advancement revoke @s only tcc:technical/entity_hurt_player/player_wearing_witch_hat
tag @s remove tcc.modifying_item
