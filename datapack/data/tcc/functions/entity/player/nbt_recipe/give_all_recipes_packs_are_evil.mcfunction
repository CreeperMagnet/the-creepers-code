############################################################
# Description: Gives you a strongly worded message about give all recipes packs.
# Creator: CreeperMagnet_
############################################################

# Fuck give all recipe packs. They're demonic. Dumbasses don't know how to use /advancement grant @a through minecraft:recipes/root instead of /recipe give @a *

# Given the above message, here's a list of some of those packs.
# "Remove Recipe Book" in the fast workbench config
# "Unlock All Recipes" Vanilla Tweaks pack

tag @s add tcc.scheduled.evil_give_all_recipes_packs
schedule function tcc:entity/player/nbt_recipe/clear_gemstones/scheduled 1t replace

tellraw @s[tag=!tcc.idiot_that_installed_give_all_recipes_pack] {"translate":"commands.tcc.give_all_recipes_error: It seems that you have a mod/datapack installed that gives the player all recipes. Please disable it or performance may be drastically lowered. You can safely ignore this message if you are not worried about performance.","color":"red","bold":true}
tag @s add tcc.idiot_that_installed_give_all_recipes_pack
