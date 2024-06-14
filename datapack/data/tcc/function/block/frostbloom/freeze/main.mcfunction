# Freezes a random block in a 5x5 area with an iceier version

data remove storage tcc:temp root.macro_input
execute store result storage tcc:temp root.macro_input.x int 1 run random value -2..2
execute store result storage tcc:temp root.macro_input.z int 1 run random value -2..2
function tcc:block/frostbloom/freeze/positioned_macro with storage tcc:temp root.macro_input