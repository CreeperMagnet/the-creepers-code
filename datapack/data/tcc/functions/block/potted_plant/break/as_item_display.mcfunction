# This function runs as the item display if the current block is not a flower pot

function tcc:block/potted_plant/break/spawn_items
execute on passengers run kill @s
kill @s
