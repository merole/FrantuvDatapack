execute as @s at @s run effect give @e[distance=..8,type=!#first:untargetable,tag=!iceMagik] slowness 3 5 true
execute as @s at @s run effect give @e[distance=..8,type=!#first:untargetable,tag=!iceMagik] blindness 3 5 true

execute as @s at @s run playsound entity.breeze.inhale player @a ~ ~ ~ 1 1

execute as @s at @e[distance=..8,type=!#first:untargetable,tag=!iceMagik] run fill ~ ~ ~ ~ ~-1 ~ powder_snow replace #first:liquids
execute as @s at @e[distance=..8,type=!#first:untargetable,tag=!iceMagik] run particle snowflake ^ ^2 ^.4 0.125 0.125 0.125 0 5 force @a