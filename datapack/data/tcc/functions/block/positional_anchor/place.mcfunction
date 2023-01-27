############################################################
# Commands to place a positional anchor
############################################################

setblock ~ ~ ~ air
summon armor_stand ~ ~ ~ {CustomName:'{"translate":"block.tcc.positional_anchor"}',Tags:["tcc.positional_anchor","tcc.block","tcc.tick","tcc.second_clock","tcc.prevents_darkening","tcc.ten_second_clock","tcc.prevents_hoppers","smithed.block","smithed.entity"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:dropper",Count:1b,tag:{CustomModelData:330002}}]}
setblock ~ ~ ~ dropper[facing=down,triggered=false]{CustomName:'{"font":"tcc:technical","translate":"block.tcc.positional_anchor.name"}',Lock:"§positional_anchor\\uF001"}
function tcc:block/hopper_updating/fill
