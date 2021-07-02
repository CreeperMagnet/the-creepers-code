# Check if the message is a higher priority than the one currently displayed
execute store result score $abcl.temp abcl.priority run data get storage abcl:storage temp.message.Priority
execute unless score @s abcl.priority < $abcl.temp abcl.priority run function abcl:message/start