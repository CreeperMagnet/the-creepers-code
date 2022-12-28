############################################################
# Colors a block
############################################################

execute if block ~ ~ ~ #tcc:candle_cakes run setblock ~ ~ ~ pink_candle_cake
execute if block ~ ~ ~ #tcc:concrete run setblock ~ ~ ~ pink_concrete
execute if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ pink_wool
execute if block ~ ~ ~ #minecraft:wool_carpets run setblock ~ ~ ~ pink_carpet
execute if block ~ ~ ~ #tcc:glass run setblock ~ ~ ~ pink_stained_glass
execute if block ~ ~ ~ #tcc:glass_panes run setblock ~ ~ ~ pink_stained_glass_pane
execute if block ~ ~ ~ #minecraft:shulker_boxes run function tcc:item/paintbrush/color_block/pink/shulker_boxes
execute if block ~ ~ ~ #tcc:glazed_terracotta run setblock ~ ~ ~ pink_glazed_terracotta
execute if block ~ ~ ~ #tcc:concrete_powder run setblock ~ ~ ~ pink_concrete_powder
execute if block ~ ~ ~ #tcc:terracotta run setblock ~ ~ ~ pink_terracotta
execute if block ~ ~ ~ #minecraft:candles run function tcc:item/paintbrush/color_block/pink/candles
function tcc:item/paintbrush/color_brush
