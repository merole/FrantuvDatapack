execute as @s at @s run effect clear @e[distance=..1] poison
execute as @s at @s run effect clear @e[distance=..1] wither
execute as @s at @s run effect clear @e[distance=..1] blindness
execute as @s at @s run effect clear @e[distance=..1] weakness
execute as @s at @s run effect clear @e[distance=..1] slowness
execute as @s at @s run effect clear @e[distance=..1] hunger
execute as @s at @s run effect clear @e[distance=..1] darkness
execute as @s at @s run effect give @e[distance=..1] regeneration 2 3 true
execute as @s at @s at @e[distance=..1] run playsound entity.allay.ambient_with_item player @a ~ ~ ~ 0.8 1
execute as @s at @s at @e[distance=..1] run particle heart ~ ~2 ~ 0.1 0.1 0.1 0 3

scoreboard players set @s nasa 0
scoreboard players remove @s mana 5
scoreboard players set @s SpellCD 300