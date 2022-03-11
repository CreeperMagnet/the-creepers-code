############################################################
# Buckets an axolotl
############################################################

execute if data storage tcc:storage root.temp.item.tag{Variant:0,Age:0} run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330000
execute if data storage tcc:storage root.temp.item.tag{Variant:0} unless data storage tcc:storage root.temp.item.tag{Age:0} run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330001

execute if data storage tcc:storage root.temp.item.tag{Variant:1,Age:0} run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330002
execute if data storage tcc:storage root.temp.item.tag{Variant:1} unless data storage tcc:storage root.temp.item.tag{Age:0} run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330003

execute if data storage tcc:storage root.temp.item.tag{Variant:2,Age:0} run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330004
execute if data storage tcc:storage root.temp.item.tag{Variant:2} unless data storage tcc:storage root.temp.item.tag{Age:0} run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330005

execute if data storage tcc:storage root.temp.item.tag{Variant:3,Age:0} run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330006
execute if data storage tcc:storage root.temp.item.tag{Variant:3} unless data storage tcc:storage root.temp.item.tag{Age:0} run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330007

execute if data storage tcc:storage root.temp.item.tag{Variant:4,Age:0} run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330008
execute if data storage tcc:storage root.temp.item.tag{Variant:4} unless data storage tcc:storage root.temp.item.tag{Age:0} run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330009
