############################################################
# Scheduled killing of experience orbs spawned in the same tick
############################################################

execute as @e[type=minecraft:experience_orb,nbt={Age:0s}] at @s run function tcc:item/ring/echo_shard/consume_soul