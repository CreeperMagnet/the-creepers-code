# Inserts sand into echoing hourglass

function tcc:block/echoing_hourglass/insert_powder_macro {"powder":"sand"}
execute as @p[advancements={tcc:technical/player_interacted_with_entity/echoing_hourglass=true},gamemode=!creative] run item modify entity @s weapon.mainhand tcc:reduce_count