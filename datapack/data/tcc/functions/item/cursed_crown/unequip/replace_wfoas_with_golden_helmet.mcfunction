# Replaces wfoas with golden helmet

data modify storage tcc:temp root.item.id set value "minecraft:golden_helmet"
function tcc:item/modify_slot/common/armor with storage tcc:temp root.item