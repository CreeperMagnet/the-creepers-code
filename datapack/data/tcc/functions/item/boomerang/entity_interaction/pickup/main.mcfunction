############################################################
# Commands for possibly picking up a boomerang
############################################################

execute as @a[gamemode=!spectator,dx=0,nbt=!{Health:0.0f}] run function tcc:item/boomerang/entity_interaction/pickup/uuid_check
execute if data storage tcc:storage root.temp.boomerang{UUID:"found"} run function tcc:item/boomerang/entity_interaction/pickup/kill_boomerang
