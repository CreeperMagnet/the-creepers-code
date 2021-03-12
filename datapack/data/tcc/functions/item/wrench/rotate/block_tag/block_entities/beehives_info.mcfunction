############################################################
# Description: Makes a title for bee data
# Creator: CreeperMagnet_
############################################################

title @s[tag=!global.ignore.gui] reset
title @s[tag=!global.ignore.gui] times 0 100 0
title @s[tag=!global.ignore.gui] title ""
execute unless data block ~ ~ ~ Bees[0] run title @s[tag=!global.ignore.gui] subtitle {"translate":"item.tcc.wrench.bee_number","with":[0]}
execute if data block ~ ~ ~ Bees[0] unless data block ~ ~ ~ Bees[1] run title @s[tag=!global.ignore.gui] subtitle {"translate":"item.tcc.wrench.bee_number","with":[1]}
execute if data block ~ ~ ~ Bees[1] unless data block ~ ~ ~ Bees[2] run title @s[tag=!global.ignore.gui] subtitle {"translate":"item.tcc.wrench.bee_number","with":[2]}
execute if data block ~ ~ ~ Bees[2] run title @s[tag=!global.ignore.gui] subtitle {"translate":"item.tcc.wrench.bee_number","with":[3]}

