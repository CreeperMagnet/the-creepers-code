############################################################
# Destroys amethyst clusters and spawns cool stuff instead
############################################################

particle block minecraft:sculk ~ ~ ~ 0.2 0.2 0.2 0.05 30
playsound tcc:block.amethyst_cluster_corrupt block @a[distance=..16] ~ ~ ~ 1 0
loot spawn ~ ~0.5 ~ loot tcc:blocks/echo_shard_from_amethyst_cluster
setblock ~ ~ ~ air
