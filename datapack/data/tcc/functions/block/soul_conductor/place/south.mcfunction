############################################################
# Commands to place a soul conductor
############################################################

setblock ~ ~ ~ air
summon armor_stand ~ ~ ~ {CustomName:'{"translate":"block.tcc.soul_conductor"}',HasVisualFire:1b,Tags:["tcc.soul_conductor","tcc.block","tcc.tick","tcc.second_clock","tcc.ten_second_clock","tcc.prevents_hoppers","smithed.block","smithed.entity"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:dropper",Count:1b,tag:{CustomModelData:330009}}]}
setblock ~ ~ ~ dropper[facing=south,triggered=false]{CustomName:'{"font":"tcc:technical","translate":"block.tcc.soul_conductor.name"}',Lock:"§soul_conductor\\uF001"}