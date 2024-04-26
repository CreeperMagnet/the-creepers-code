# Commands for breaking the frame

execute as @e[tag=!smithed.entity,limit=1,type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:item_frame"},Age:0s},nbt=!{Item:{components:{"minecraft:custom_data":{tcc:{}}}}}] at @s run function tcc:block/phantom_item_frame/break/kill_item
playsound tcc:entity.phantom_item_frame.break block @a[distance=..16]
kill @s
