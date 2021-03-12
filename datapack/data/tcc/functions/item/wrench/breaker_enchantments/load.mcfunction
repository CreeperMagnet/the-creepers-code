tag @s add tcc.tag
tellraw @s {"translate": "item.tcc.wrench.enchantment_list"}
execute as @e[tag=tcc.block,tag=tcc.block_breaker,tag=tcc.block_breaker.enchanted,type=armor_stand,dx=0,dz=0,dy=1,sort=nearest,limit=1] run function tcc:item/wrench/breaker_enchantments/get
tag @s remove tcc.tag
