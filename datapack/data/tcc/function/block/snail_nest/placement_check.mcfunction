# Commands to place a snail nest

execute if data block ~ ~ ~ {Items:[{components:{"minecraft:custom_data":{tcc:{placed_block:1b,block:"snail_nest"}}}}]} positioned ~ ~0.5 ~ run function tcc:block/snail_nest/place
