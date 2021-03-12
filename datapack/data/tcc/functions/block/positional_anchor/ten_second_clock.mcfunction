############################################################
# Description: Commands to run every ten seconds off the positional anchor
# Creator: CreeperMagnet_
############################################################

execute if block ~1 ~ ~ hopper[facing=west] run data modify block ~1 ~ ~ TransferCooldown set value 2147483646
execute if block ~-1 ~ ~ hopper[facing=east] run data modify block ~-1 ~ ~ TransferCooldown set value 2147483646
execute if block ~ ~ ~1 hopper[facing=north] run data modify block ~ ~ ~1 TransferCooldown set value 2147483646
execute if block ~ ~ ~-1 hopper[facing=south] run data modify block ~ ~ ~-1 TransferCooldown set value 2147483646
execute if block ~ ~1 ~ hopper[facing=down] run data modify block ~ ~1 ~ TransferCooldown set value 2147483646
execute if block ~ ~-1 ~ hopper[facing=down] run data modify block ~ ~-1 ~ TransferCooldown set value 2147483646
