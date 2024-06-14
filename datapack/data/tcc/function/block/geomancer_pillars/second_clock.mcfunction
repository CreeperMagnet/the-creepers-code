# Functions to run off geomancer pillars every second

execute if entity @s[tag=tcc.geomancer_pillar.normal] run function tcc:block/geomancer_pillars/normal/second_clock
execute if entity @s[tag=tcc.geomancer_pillar.explosive] run function tcc:block/geomancer_pillars/explosive/second_clock
