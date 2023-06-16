############################################################
# Commands to remove transfercooldown from hoppers surrounding a custom block
############################################################

execute if block ~1 ~ ~ hopper[facing=west] run data modify block ~1 ~ ~ TransferCooldown set value 0
execute if block ~-1 ~ ~ hopper[facing=east] run data modify block ~-1 ~ ~ TransferCooldown set value 0
execute if block ~ ~ ~1 hopper[facing=north] run data modify block ~ ~ ~1 TransferCooldown set value 0
execute if block ~ ~ ~-1 hopper[facing=south] run data modify block ~ ~ ~-1 TransferCooldown set value 0
execute if block ~ ~1 ~ hopper[facing=down] run data modify block ~ ~1 ~ TransferCooldown set value 0
execute if block ~ ~-1 ~ hopper run data modify block ~ ~-1 ~ TransferCooldown set value 0
execute as @e[type=item_display,tag=tcc.prevents_hoppers,tag=tcc.block,distance=..5] at @s positioned ~ ~-1 ~ run function tcc:block/hopper_updating/fill