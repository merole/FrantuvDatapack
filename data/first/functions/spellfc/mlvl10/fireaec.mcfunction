execute as @s at @s run tp @s ^ ^ ^1
execute as @s at @s run particle flame ~ ~.2 ~ 0 0 0 0 1 force @a 
execute as @s at @s run playsound block.fire.ambient player @a ~ ~ ~ 1 1
execute as @s at @s if block ~ ~ ~ tnt run summon small_fireball ~ ~ ~ {Motion:[0d,-1d,0d]}
execute as @s at @s if score @s SpellCD matches ..15 run particle flame ~ ~.2 ~ 0.1 0.1 0.1 0.01 5 force @a 
execute as @s at @s if score @s SpellCD matches ..10 run particle flame ~ ~.2 ~ 0.2 0.2 0.2 0.01 10 force @a
execute as @s at @s if score @s SpellCD matches ..5 run particle flame ~ ~.2 ~ 0.3 0.3 0.3 0.01 15 force @a
execute as @s at @s if score @s SpellCD matches ..1 run particle large_smoke ~ ~.2 ~ 0.3 0.3 0.3 0 35 force @a
execute as @s at @s if score @s SpellCD matches ..1 run playsound block.fire.extinguish player @a ~ ~ ~ 1 1

execute as @e[distance=..2,tag=!fireMagik,type=!#first:untargetable] at @s run damage @s 24 on_fire by @p[tag=fireMagik]
execute as @e[distance=..2,tag=!fireMagik,type=!#first:untargetable] at @s run damage @s 12 first:fire/firetruodes by @p[tag=fireMagik]


execute as @s at @s if score @s SpellCD matches ..17 run setblock ~ ~ ~ fire keep


execute as @s at @s if block ~ ~ ~ #snow run setblock ~ ~ ~ air destroy
execute as @s at @s if block ~ ~ ~ #ice run setblock ~ ~ ~ air destroy
execute as @s at @s unless block ~ ~ ~ #first:liquids run playsound block.fire.extinguish block @a ~ ~ ~ 1 1 
execute as @s at @s unless block ~ ~ ~ #first:liquids run kill @s
execute as @s[predicate=first:in_water] at @s run playsound block.fire.extinguish block @a ~ ~ ~ 1 1
execute as @s[predicate=first:in_water] at @s run kill @s