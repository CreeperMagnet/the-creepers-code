############################################################
# Breaks the gobblerift
############################################################

execute store result score #temp tcc.dummy run scoreboard players get @s tcc.dummy
function tcc:block/gobblerift/array_management/remove
kill @s
