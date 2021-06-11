############################################################
# Description: Makes sure all of the ocean monument is loaded before replacing it with a custom one
# Creator: CreeperMagnet_
############################################################

execute unless block ~40 ~ ~ dispenser{impossible:1b} unless block ~-40 ~ ~ dispenser{impossible:1b} unless block ~ ~ ~40 dispenser{impossible:1b} unless block ~ ~ ~-40 dispenser{impossible:1b} positioned ~ 80 ~ run function tcc:worldgen/ocean_monument_edits/modify/scan
