# Colors a bed and its corresponding head/foot

$execute if block ~ ~ ~ #minecraft:beds[part=foot] run function tcc:item/paintbrush/color_block/bed/foot {"color":"$(color)"}
$execute if block ~ ~ ~ #minecraft:beds[part=head] run function tcc:item/paintbrush/color_block/bed/head {"color":"$(color)"}