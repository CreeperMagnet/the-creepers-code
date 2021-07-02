############################################################
# Description: Scheduled function to run off of players that have all recipes unlocked
# Creator: CreeperMagnet_
############################################################

execute as @a[tag=tcc.scheduled.evil_give_all_recipes_packs] run function tcc:entity/player/nbt_recipe/clear_gemstones/clear
