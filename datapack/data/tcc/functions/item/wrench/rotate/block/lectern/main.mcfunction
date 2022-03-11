############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ lectern[has_book=true,powered=true] run function tcc:item/wrench/rotate/block/lectern/powered_book
execute if block ~ ~ ~ lectern[has_book=true,powered=false] run function tcc:item/wrench/rotate/block/lectern/unpowered_book
execute if block ~ ~ ~ lectern[has_book=true] run data modify block ~ ~ ~ Book set from storage tcc:storage root.temp.wrench_block_data.Book

execute if block ~ ~ ~ lectern[has_book=false,powered=true] run function tcc:item/wrench/rotate/block/lectern/powered
execute if block ~ ~ ~ lectern[has_book=false,powered=false] run function tcc:item/wrench/rotate/block/lectern/unpowered
