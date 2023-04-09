############################################################
# Summons the witch and kills the marker
############################################################

spreadplayers ~ ~ 10 48 false @s
spreadplayers ~ ~ 10 48 false @s[distance=..10]
spreadplayers ~ ~ 10 48 false @s[distance=..10]
execute at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute at @s run function tcc:commands/summon/wandering_witch
execute at @s run particle witch ~ ~ ~ 0.5 1 0.5 0 100 force
kill @s