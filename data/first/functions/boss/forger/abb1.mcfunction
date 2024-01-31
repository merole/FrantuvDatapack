execute as @s at @s run particle poof ~ ~.5 ~ 1 0 1 0 100 normal @a
execute as @s at @s run playsound block.deepslate.break hostile @a ~ ~ ~
scoreboard players set @s SpellCD 40
execute as @s at @s run damage @e[distance=..7,limit=1,type=!#first:untargetable,tag=!forger] 8 first:stomp by @s
