# Runs when the scan hits the shrieker

execute if block ~ ~1 ~ #tcc:shrieker_shriek_passes_through if block ~ ~2 ~ minecraft:amethyst_cluster positioned ~ ~2 ~ run function tcc:block/echo_shard_renewability/break_cluster