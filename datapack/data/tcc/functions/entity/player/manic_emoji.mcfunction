# Only allows posting Manic emojis if Manic is installed

execute if entity @s[scores={tcc.emoji=100}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"chat.manic.emoji.spook.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=101}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"chat.manic.emoji.snotty.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=102}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"chat.manic.emoji.revenant.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=103}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"chat.manic.emoji.revenant_on.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=104}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"chat.manic.emoji.eidolon.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=105}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"chat.manic.emoji.keeper.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=106}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"chat.manic.emoji.brain.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=107}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"chat.manic.emoji.insane.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=108}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"chat.manic.emoji.insomniac.chat","font":"tcc:emoji"}]}
execute if entity @s[scores={tcc.emoji=109}] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"chat.manic.emoji.corpsepitcher.chat","font":"tcc:emoji"}]}
execute unless entity @s[scores={tcc.emoji=1}] if entity @s[scores={tcc.emoji=100..109}] run tellraw @a ""
