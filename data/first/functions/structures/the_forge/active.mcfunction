execute as @s[scores={SpellCD=0..}] at @s run particle dust 0.875 0.875 0.071 1 ~ ~ ~ 02 2 2 0 5 normal @a
execute as @s[scores={SpellCD=0}] at @s run playsound block.beacon.ambient block @a ~ ~ ~ 1
execute as @s unless score @s SpellCD matches 1..60 at @s run scoreboard players set @s SpellCD 60

execute as @s[scores={SpellCD=0..1}] at @s if entity @p[tag=magik,distance=..2,predicate=first:ringcreate/air] run function first:artifact/rings/air
execute as @s[scores={SpellCD=0..1}] at @s if entity @p[tag=magik,distance=..2,predicate=first:ringcreate/earth] run function first:artifact/rings/earth
execute as @s[scores={SpellCD=0..1}] at @s if entity @p[tag=magik,distance=..2,predicate=first:ringcreate/end] run function first:artifact/rings/end
execute as @s[scores={SpellCD=0..1}] at @s if entity @p[tag=magik,distance=..2,predicate=first:ringcreate/fire] run function first:artifact/rings/fire
execute as @s[scores={SpellCD=0..1}] at @s if entity @p[tag=magik,distance=..2,predicate=first:ringcreate/ice] run function first:artifact/rings/ice
execute as @s[scores={SpellCD=0..1}] at @s if entity @p[tag=magik,distance=..2,predicate=first:ringcreate/skulk] run function first:artifact/rings/skulk
execute as @s[scores={SpellCD=0..1}] at @s if entity @p[tag=magik,distance=..2,predicate=first:ringcreate/ustra] run function first:artifact/rings/ustra
execute as @s[scores={SpellCD=0..1}] at @s if entity @p[tag=magik,distance=..2,predicate=first:ringcreate/water] run function first:artifact/rings/water
execute as @s[scores={SpellCD=0..1}] at @s if entity @p[tag=magik,distance=..2,predicate=first:ringcreate/wither] run function first:artifact/rings/wither

execute as @s[scores={SpellCD=0}] at @s run playsound block.beacon.ambient block @a ~ ~ ~ 1