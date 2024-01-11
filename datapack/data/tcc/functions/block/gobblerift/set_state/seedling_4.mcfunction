# Sets a gobblerift into seedling state 4

function tcc:block/gobblerift/set_state/reset_tags
execute on vehicle run data modify entity @s item.tag.CustomModelData set value 330028
data modify entity @s height set value 1.5f
tag @s add tcc.gobblerift.tall
tag @s add tcc.gobblerift.bonemealable
tag @s add tcc.gobblerift.seedling_4