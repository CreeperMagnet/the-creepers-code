# Get a random number

$execute store result storage tcc:storage root.temp.random.value byte 1 run random value 0..$(max)
function tcc:item/durability/mending/get_random/get_in_list with storage tcc:storage root.temp.random
