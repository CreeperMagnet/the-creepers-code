# Commands for possibly picking up a boomerang

execute as @a[dx=0,gamemode=!spectator,sort=nearest] run function tcc:item/boomerang/entity_interaction/pickup/uuid_check with storage tcc:temp root.boomerang.macro_input
execute if data storage tcc:temp root.boomerang.macro_input{UUID:"found"} run function tcc:item/boomerang/entity_interaction/pickup/kill_boomerang
