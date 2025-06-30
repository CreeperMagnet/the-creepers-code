# Colors a block

$execute if block ~ ~ ~ #tcc:paintbrush/$(color) run return 0

$execute if block ~ ~ ~ #tcc:candle_cakes run setblock ~ ~ ~ minecraft:$(color)_candle_cake
$execute if block ~ ~ ~ #tcc:concrete run setblock ~ ~ ~ minecraft:$(color)_concrete
$execute if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ minecraft:$(color)_wool
$execute if block ~ ~ ~ #minecraft:wool_carpets run setblock ~ ~ ~ minecraft:$(color)_carpet
$execute if block ~ ~ ~ #tcc:glass run setblock ~ ~ ~ minecraft:$(color)_stained_glass
$execute if block ~ ~ ~ #tcc:glass_panes run setblock ~ ~ ~ minecraft:$(color)_stained_glass_pane
$execute if block ~ ~ ~ #minecraft:shulker_boxes run function tcc:item/paintbrush/color_block/shulker_boxes {"color":"$(color)"}
$execute if block ~ ~ ~ #tcc:glazed_terracotta run function tcc:item/paintbrush/color_block/glazed_terracotta {"color":"$(color)"}
$execute if block ~ ~ ~ #minecraft:concrete_powder run setblock ~ ~ ~ minecraft:$(color)_concrete_powder
$execute if block ~ ~ ~ #tcc:terracotta run setblock ~ ~ ~ minecraft:$(color)_terracotta
$execute if block ~ ~ ~ #minecraft:candles run function tcc:item/paintbrush/color_block/candles {"color":"$(color)"}
$execute if block ~ ~ ~ #minecraft:beds run function tcc:item/paintbrush/color_block/bed/main {"color":"$(color)"}
$function tcc:item/paintbrush/color_brush {color:"$(color)"}
