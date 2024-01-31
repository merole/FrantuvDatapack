scoreboard players add @s random3 1
execute as @s[scores={random3=20}] at @e[distance=..40,tag=!skulkin,type=#first:dangerous] run playsound block.note_block.flute hostile @s ~ ~ ~ 0.8 0
execute as @s[scores={random3=15}] at @e[distance=..40,tag=!skulkin,type=player,predicate=!first:sneaks] run playsound block.note_block.guitar hostile @s ~ ~ ~ 0.8 0
execute as @s[scores={random3=10}] at @e[distance=..40,tag=!skulkin,type=#first:weak] run playsound block.note_block.banjo hostile @s ~ ~ ~ 0.8 0
execute as @s[scores={random3=5}] at @e[distance=..40,tag=!skulkin,type=#first:projectiles] run playsound block.note_block.hat hostile @s ~ ~ ~ 0.8 0
execute as @s[scores={random3=5}] at @e[distance=5..40,tag=!skulkin,type=item] run playsound block.note_block.snare hostile @s ~ ~ ~ 0.8 0
execute as @s[scores={random3=5}] at @e[distance=..40,tag=!skulkin,type=!#first:projectiles,type=!#first:weak,type=!#first:dangerous,type=!item,type=!#first:untargetable] run playsound block.note_block.iron_xylophone hostile @s ~ ~ ~ 0.8 0
execute as @s[scores={random3 = 21..}] at @s run scoreboard players set @s random3 0