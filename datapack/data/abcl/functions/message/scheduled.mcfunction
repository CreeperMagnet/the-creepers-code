execute store result score $abcl.temp abcl.scheduled run time query gametime
execute as @e[tag=abcl.scheduled] if score @s abcl.scheduled = $abcl.temp abcl.scheduled run function abcl:message/end