############################################################
# Description: Destroys the old monument completely
# Creator: CreeperMagnet_
############################################################

execute positioned ~ ~-0 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:ocean_monument_blocks
execute positioned ~ ~-5 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:ocean_monument_blocks
execute positioned ~ ~-10 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:ocean_monument_blocks
execute positioned ~ ~-15 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:ocean_monument_blocks
execute positioned ~ ~-20 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:ocean_monument_blocks
execute positioned ~ ~-25 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:ocean_monument_blocks
execute positioned ~ ~-30 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:ocean_monument_blocks
execute positioned ~ ~-35 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:ocean_monument_blocks
execute positioned ~ ~-40 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:ocean_monument_blocks
execute positioned ~ ~-45 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:ocean_monument_blocks

tag @s add tcc.found
summon marker ~ ~ ~ {Tags:["tcc.cleanup.monument"]}
schedule function tcc:worldgen/ocean_monument_edits/modify/clean_up_scheduled 1s
