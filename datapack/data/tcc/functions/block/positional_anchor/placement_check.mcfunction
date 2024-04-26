# Commands to place a positional anchor

execute if data block ~ ~ ~ {Items:[{components:{"minecraft:custom_data":{tcc:{placed_block:1b,block:"positional_anchor"}}}}]} positioned ~ ~0.5 ~ run function tcc:block/positional_anchor/place