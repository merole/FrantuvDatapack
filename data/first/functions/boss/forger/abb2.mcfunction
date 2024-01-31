execute as @s at @s run playsound entity.warden.roar hostile @a ~ ~ ~
execute as @s at @s run playsound block.smithing_table.use hostile @a ~ ~ ~ 1 0
scoreboard players set @s SpellCD 100
execute as @s at @s anchored eyes run damage @e[distance=..10,type=!#first:untargetable,limit=1,tag=!forger,tag=!ForgerBrain] 15 thrown by @s
