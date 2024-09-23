# Ends any persistent effects that should be stopped by dying, drinking milk, or using a totem
advancement revoke @s only tcc:technical/multiple_trigger_types/die_milk_or_totem


execute if score @s tcc.tea matches 1.. run return run function tcc:item/tea/stop
function tcc:item/scale_serum/reset_attributes
