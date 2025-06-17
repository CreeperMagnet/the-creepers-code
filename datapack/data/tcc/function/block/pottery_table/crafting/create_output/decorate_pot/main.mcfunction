# Chooses which type of pot is used

execute if items block ~ ~ ~ container.12 *[minecraft:custom_data~{tcc:{id:"decorated_pot"}}] run return run function tcc:block/pottery_table/crafting/create_output/decorate_pot/custom/main

function tcc:block/pottery_table/crafting/create_output/decorate_pot/vanilla
