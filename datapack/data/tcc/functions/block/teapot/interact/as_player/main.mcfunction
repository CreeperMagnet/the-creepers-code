############################################################
# Commands to run as the player who filled a teapot
############################################################

execute if entity @s[advancements={tcc:technical/player_interacted_with_entity/teapot={add_water=true}},gamemode=!creative] run item replace entity @s weapon.mainhand with minecraft:glass_bottle 1
execute if entity @s[advancements={tcc:technical/player_interacted_with_entity/teapot={take=true}}] run function tcc:block/teapot/interact/as_player/take/main
execute unless entity @s[advancements={tcc:technical/player_interacted_with_entity/teapot={add_warped_wart=false,add_snail_mucus=false}}] if entity @s[gamemode=!creative] run item modify entity @s weapon.mainhand tcc:reduce_count/1
execute if entity @s[advancements={tcc:technical/player_interacted_with_entity/teapot={add_ingredient=true}},gamemode=!creative] run function tcc:block/teapot/interact/as_player/add_ingredient
