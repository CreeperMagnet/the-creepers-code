############################################################
# Changes the lore of the pot based on the shards used
############################################################

execute if data storage tcc:storage root.temp{sherd_type:"blank"} run data modify storage tcc:storage root.temp.lore_line set value '{"translate":"item.tcc.pottery_sherd.prismarine.blank","color":"gray","italic":false}'
execute if data storage tcc:storage root.temp{sherd_type:"artifact"} run data modify storage tcc:storage root.temp.lore_line set value '{"translate":"item.tcc.pottery_sherd.prismarine.artifact","color":"gray","italic":false}'
execute if data storage tcc:storage root.temp{sherd_type:"catch"} run data modify storage tcc:storage root.temp.lore_line set value '{"translate":"item.tcc.pottery_sherd.prismarine.catch","color":"gray","italic":false}'
execute if data storage tcc:storage root.temp{sherd_type:"idol"} run data modify storage tcc:storage root.temp.lore_line set value '{"translate":"item.tcc.pottery_sherd.prismarine.idol","color":"gray","italic":false}'
execute if data storage tcc:storage root.temp{sherd_type:"ink"} run data modify storage tcc:storage root.temp.lore_line set value '{"translate":"item.tcc.pottery_sherd.prismarine.ink","color":"gray","italic":false}'
execute if data storage tcc:storage root.temp{sherd_type:"pickle"} run data modify storage tcc:storage root.temp.lore_line set value '{"translate":"item.tcc.pottery_sherd.prismarine.pickle","color":"gray","italic":false}'
execute if data storage tcc:storage root.temp{sherd_type:"protector"} run data modify storage tcc:storage root.temp.lore_line set value '{"translate":"item.tcc.pottery_sherd.prismarine.protector","color":"gray","italic":false}'
execute if data storage tcc:storage root.temp{sherd_type:"reef"} run data modify storage tcc:storage root.temp.lore_line set value '{"translate":"item.tcc.pottery_sherd.prismarine.reef","color":"gray","italic":false}'
execute if data storage tcc:storage root.temp{sherd_type:"shell"} run data modify storage tcc:storage root.temp.lore_line set value '{"translate":"item.tcc.pottery_sherd.prismarine.shell","color":"gray","italic":false}'
execute if data storage tcc:storage root.temp{sherd_type:"turtle"} run data modify storage tcc:storage root.temp.lore_line set value '{"translate":"item.tcc.pottery_sherd.prismarine.turtle","color":"gray","italic":false}'
execute if data storage tcc:storage root.temp{sherd_type:"voyager"} run data modify storage tcc:storage root.temp.lore_line set value '{"translate":"item.tcc.pottery_sherd.prismarine.voyager","color":"gray","italic":false}'