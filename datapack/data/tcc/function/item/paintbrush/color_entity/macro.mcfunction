# Colors a shulker or sheep a specific color

$execute if entity @s[nbt={Color:$(number)b}] run return 0
$data modify entity @s Color set value $(number)b
$execute as @p[tag=tcc.paintbrush.raycaster] at @s run function tcc:item/paintbrush/color_brush {"color":"$(color)"}