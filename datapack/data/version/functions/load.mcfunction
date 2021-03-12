#  Add objectives if they are missing
scoreboard objectives add major dummy
scoreboard objectives add minor dummy
scoreboard objectives add patch dummy
#  Reset all objectives prior to loading
scoreboard players reset * major
scoreboard players reset * minor
scoreboard players reset * patch
#  Example Versioning
scoreboard players set 425.version major 1
scoreboard players set 425.version minor 0
scoreboard players set 425.version patch 0
#  Load other packs
function #version:load
function #version:post_load
#  Start ticking loop
schedule clear version:tick
schedule function version:tick 1t append
