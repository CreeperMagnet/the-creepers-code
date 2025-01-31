# Main growing phases for gobblerift

scoreboard players add @s tcc.dummy2 1
execute if entity @s[scores={tcc.dummy2=60..}] run function tcc:block/gobblerift/grow/increase_state