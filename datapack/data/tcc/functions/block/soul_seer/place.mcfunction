############################################################
# Commands to place a soul seer
############################################################

setblock ~ ~ ~ air
summon armor_stand ~ ~ ~ {CustomName:'{"translate":"block.tcc.soul_seer"}',Tags:["tcc.soul_seer","tcc.block","tcc.tick","tcc.second_clock","tcc.ten_second_clock","tcc.prevents_hoppers","tcc.prevents_darkening","smithed.block","smithed.entity"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:dropper",Count:1b,tag:{CustomModelData:330004}}]}
setblock ~ ~ ~ dropper[facing=down,triggered=false]{CustomName:'{"font":"tcc:technical","translate":"block.tcc.soul_seer.name"}',Lock:"§soul_seer_off\\uF001"}
function tcc:block/hopper_updating/fill
