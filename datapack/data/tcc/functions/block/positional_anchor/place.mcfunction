############################################################
# Commands to place a positional anchor
############################################################

setblock ~ ~-1 ~ air
summon item_display ~ ~ ~ {CustomName:'{"translate":"block.tcc.positional_anchor"}',Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.positional_anchor","smithed.entity","smithed.block","tcc.ten_second_clock","tcc.prevents_hoppers"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f], right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:dropper",Count:1b,tag:{CustomModelData:330002}}}
execute positioned ~ ~-1 ~ run function tcc:block/hopper_updating/fill
setblock ~ ~-1 ~ dropper[facing=down,triggered=false]{CustomName:'{"font":"tcc:technical","translate":"block.tcc.positional_anchor.name"}',Lock:"§positional_anchor\\uF001"}
