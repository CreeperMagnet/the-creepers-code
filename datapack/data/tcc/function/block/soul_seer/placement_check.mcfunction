# Commands to place a soul seer

execute if data block ~ ~ ~ {Items:[{components:{"minecraft:custom_data":{tcc:{placed_block:1b,block:"soul_seer"}}}}]} positioned ~ ~0.5 ~ run function tcc:block/soul_seer/place
