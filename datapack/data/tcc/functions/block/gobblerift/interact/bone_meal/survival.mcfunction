############################################################
# Bone meal for gobblerift but for survival mode
############################################################

scoreboard players add @s tcc.dummy2 10
execute on target run item modify entity @s weapon.mainhand tcc:reduce_count/1
function tcc:block/gobblerift/interact/bone_meal/main
function tcc:block/gobblerift/grow/main