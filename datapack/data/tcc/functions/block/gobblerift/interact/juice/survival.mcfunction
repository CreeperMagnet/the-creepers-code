############################################################
# Take juice from gobblerift but for survival mode
############################################################

execute on target run item modify entity @s weapon.mainhand tcc:reduce_count/1
function tcc:block/gobblerift/interact/juice/main
function tcc:block/gobblerift/set_state/hungry