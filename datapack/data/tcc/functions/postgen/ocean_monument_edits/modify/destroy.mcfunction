############################################################
# Destroys the old monument completely
############################################################

execute positioned ~ ~-0 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-5 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-10 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-15 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-20 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-25 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-30 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-35 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-40 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-45 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-50 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-55 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-60 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-65 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-70 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-75 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-80 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-85 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-90 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-95 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup
execute positioned ~ ~-100 ~ run fill ~30 ~5 ~30 ~-30 ~ ~-30 water replace #tcc:monument_generation/cleanup

tag @s add tcc.found
summon marker ~ ~ ~ {Tags:["tcc.cleanup.monument"]}
schedule function tcc:postgen/ocean_monument_edits/modify/clean_up_scheduled 1s
