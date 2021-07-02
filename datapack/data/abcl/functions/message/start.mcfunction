# Schedule end of message, if applicable
scoreboard players set $abcl.temp abcl.math 0
execute if data storage abcl:storage temp.message.ClearInstantly store result score $abcl.temp abcl.math run data get storage abcl:storage temp.message.ClearInstantly
execute unless score $abcl.temp abcl.math matches 1.. run function abcl:message/do_schedule

# Set new priority score
execute store result score @s abcl.priority run data get storage abcl:storage temp.message.Priority

# Send the message
title @s actionbar {"nbt":"temp.message.Message","storage":"abcl:storage","interpret":true}

# Reset if not scheduled
execute if score $abcl.temp abcl.math matches 1.. run scoreboard players reset @s abcl.priority