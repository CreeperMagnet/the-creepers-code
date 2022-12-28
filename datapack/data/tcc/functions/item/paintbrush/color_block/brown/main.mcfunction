############################################################
# Colors a block
############################################################

execute if block ~ ~ ~ #tcc:candle_cakes run setblock ~ ~ ~ brown_candle_cake
execute if block ~ ~ ~ #tcc:concrete run setblock ~ ~ ~ brown_concrete
execute if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ brown_wool
execute if block ~ ~ ~ #minecraft:wool_carpets run setblock ~ ~ ~ brown_carpet
execute if block ~ ~ ~ #tcc:glass run setblock ~ ~ ~ brown_stained_glass
execute if block ~ ~ ~ #tcc:glass_panes run setblock ~ ~ ~ brown_stained_glass_pane
execute if block ~ ~ ~ #minecraft:shulker_boxes run function tcc:item/paintbrush/color_block/brown/shulker_boxes
execute if block ~ ~ ~ #tcc:glazed_terracotta run setblock ~ ~ ~ brown_glazed_terracotta
execute if block ~ ~ ~ #tcc:concrete_powder run setblock ~ ~ ~ brown_concrete_powder
execute if block ~ ~ ~ #tcc:terracotta run setblock ~ ~ ~ brown_terracotta
execute if block ~ ~ ~ #minecraft:candles run function tcc:item/paintbrush/color_block/brown/candles
function tcc:item/paintbrush/color_brush
