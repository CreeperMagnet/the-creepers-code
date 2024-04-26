# Commands to place a soul conductor

execute if data block ~ ~ ~ {Items:[{components:{"minecraft:custom_data":{tcc:{placed_block:1b,block:"soul_conductor"}}}}]} positioned ~ ~0.5 ~ run function tcc:block/soul_conductor/place
