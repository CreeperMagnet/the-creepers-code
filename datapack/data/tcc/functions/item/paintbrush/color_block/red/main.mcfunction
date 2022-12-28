############################################################
# Colors a block
############################################################

execute if block ~ ~ ~ #tcc:candle_cakes run setblock ~ ~ ~ red_candle_cake
execute if block ~ ~ ~ #tcc:concrete run setblock ~ ~ ~ red_concrete
execute if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ red_wool
execute if block ~ ~ ~ #minecraft:wool_carpets run setblock ~ ~ ~ red_carpet
execute if block ~ ~ ~ #tcc:glass run setblock ~ ~ ~ red_stained_glass
execute if block ~ ~ ~ #tcc:glass_panes run setblock ~ ~ ~ red_stained_glass_pane
execute if block ~ ~ ~ #minecraft:shulker_boxes run function tcc:item/paintbrush/color_block/red/shulker_boxes
execute if block ~ ~ ~ #tcc:glazed_terracotta run setblock ~ ~ ~ red_glazed_terracotta
execute if block ~ ~ ~ #tcc:concrete_powder run setblock ~ ~ ~ red_concrete_powder
execute if block ~ ~ ~ #tcc:terracotta run setblock ~ ~ ~ red_terracotta
execute if block ~ ~ ~ #minecraft:candles run function tcc:item/paintbrush/color_block/red/candles
function tcc:item/paintbrush/color_brush
