############################################################
# Deactivates an entry in the gobblerift array
############################################################

execute store result score #temp tcc.dummy run data get entity @s item.tag.id
function tcc:block/gobblerift/array_management/remove