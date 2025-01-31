# Bone meal for gobblerift but for survival mode

scoreboard players add @s tcc.dummy2 30
execute on target run item modify entity @s weapon.mainhand tcc:reduce_count
function tcc:block/gobblerift/interact/bone_meal/main
function tcc:block/gobblerift/grow/main