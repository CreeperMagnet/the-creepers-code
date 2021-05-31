############################################################
# Description: Commands to place a positional anchor
# Creator: Nexus
############################################################

setblock ~ ~ ~ air
summon armor_stand ~ ~ ~ {CustomName:'{"translate":"block.tcc.positional_anchor"}',HasVisualFire:1b,Tags:["tcc.positional_anchor","tcc.block","tcc.entity"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:dropper",Count:1b,tag:{CustomModelData:330032}}]}
setblock ~ ~ ~ dropper[facing=down,triggered=false]{CustomName:'{"font":"tcc:technical","translate":"block.tcc.positional_anchor.name"}',Lock:"positional_anchor\\uF001"}
function tcc:block/positional_anchor/ten_second_clock
