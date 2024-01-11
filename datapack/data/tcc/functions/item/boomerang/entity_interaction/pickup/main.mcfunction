# Commands for possibly picking up a boomerang

execute as @a[dx=0,gamemode=!spectator,sort=nearest] run function tcc:item/boomerang/entity_interaction/pickup/uuid_check with storage tcc:storage root.temp.boomerang.macro_input
execute if data storage tcc:storage root.temp.boomerang.macro_input{UUID:"found"} run function tcc:item/boomerang/entity_interaction/pickup/kill_boomerang
