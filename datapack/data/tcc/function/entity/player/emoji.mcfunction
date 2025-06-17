# Prints an emoji based on scoreboard objective

execute if entity @s[scores={tcc.emoji=1}] run dialog show @s tcc:emoji

execute if entity @s[scores={tcc.emoji=2}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.expressionless.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=3}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.happy.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=4}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.laughing.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=5}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.crazy.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=6}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.cool.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=7}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.fancy.chat","font":"tcc:emoji"}]}

execute if entity @s[scores={tcc.emoji=8}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.confused.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=9}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.staring.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=10}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.flushed.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=11}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.pleading.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=12}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.sad.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=13}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.sobbing.chat","font":"tcc:emoji"}]}

execute if entity @s[scores={tcc.emoji=14}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.scared.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=15}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.queasy.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=16}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.angry.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=17}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.eye_roll.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=18}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.smirk.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=19}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.imp.chat","font":"tcc:emoji"}]}

execute if entity @s[scores={tcc.emoji=20}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.hollow.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=21}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.mindblown.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=22}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.love.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=23}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.sleepy.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=24}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.nerd.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=25}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.clown.chat","font":"tcc:emoji"}]}

execute if entity @s[scores={tcc.emoji=26}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.thumbs_up.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=27}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.thumbs_down.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=28}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.shrug.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=29}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.facepalm.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=30}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.works_as_intended.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=31}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.dab.chat","font":"tcc:emoji"}]}

execute if entity @s[scores={tcc.emoji=32}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.troll.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=33}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.zombified.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=34}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.illager.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=35}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.spooky.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=36}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.alien.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=37}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.creeper.chat","font":"tcc:emoji"}]}

execute if entity @s[scores={tcc.emoji=38}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.skull.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=39}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.fire.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=40}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.sparkles.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=41}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.food.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=42}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.pickaxe.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=43}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"shadow_color":0,"translate":"chat.tcc.emoji.sword.chat","font":"tcc:emoji"}]}

execute if entity @s[scores={tcc.emoji=69}] run tellraw @s {"text":"lmao nice"}
execute unless entity @s[scores={tcc.emoji=1..43}] run tellraw @s {"translate":"chat.tcc.emoji.out_of_bounds","color":"red"}
execute unless entity @s[scores={tcc.emoji=1}] if entity @s[scores={tcc.emoji=2..43}] run tellraw @a ""
scoreboard players enable @s tcc.emoji
scoreboard players set @s tcc.emoji 0
