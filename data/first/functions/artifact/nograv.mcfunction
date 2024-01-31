execute as @s at @s on origin if predicate first:artifact/ironstring run data merge entity @e[type=#first:projectiles,limit=1,distance=..1] {NoGravity:1b,Silent:1b,Tags:["ironstring"]}
scoreboard players set @s SpellCD 5000
