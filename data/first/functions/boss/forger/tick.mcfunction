execute as @s[scores={SpellCD = 0}] at @s store result score @s random1 run random value 0..20
execute as @s[scores={SpellCD = 0,random1 = 1}] at @s run function first:boss/forger/abb1
execute as @s[scores={SpellCD = 0,random1 = 2}] at @s run function first:boss/forger/abb2
execute as @s[scores={SpellCD = 0,random1 = 3}] at @s run function first:boss/forger/abb3
execute as @s[scores={SpellCD = 0,random1 = 4}] at @s run function first:boss/forger/abb4