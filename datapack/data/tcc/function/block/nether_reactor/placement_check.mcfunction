# Commands to place a nether reactor

execute if data block ~ ~ ~ {Items:[{components:{"minecraft:custom_data":{tcc:{placed_block:1b,block:"nether_reactor_core"}}}}]} positioned ~ ~0.5 ~ run function tcc:block/nether_reactor/place
