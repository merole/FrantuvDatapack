

execute as @s at @s if entity @p[distance=..16] store result score @s random1 run random value 0..200
execute as @s[scores={random1 = 1}] at @s run function first:boss/dbm/abb1
##execute as @s[scores={random1 = 2}] at @s run function first:boss/dbm/abb2
execute as @s[scores={random1 = 3}] at @s run function first:boss/dbm/abb3
execute as @s[scores={random1 = 4}] at @s run function first:boss/dbm/abb4
execute as @s[scores={random1 = 5}] at @s run function first:boss/dbm/abb5
##execute as @s[scores={random1 = 6}] at @s run tellraw @a[distance=..16] {"text":"<Dark Boneman> I te derreoci!","color":"aqua"}
execute as @s[scores={random1 = 7}] at @s run tellraw @a[distance=..16] {"text":"<Dark Boneman> Bitisperi!","color":"aqua"}
execute as @s[scores={random1 = 8}] at @s run tellraw @a[distance=..16] {"text":"<Dark Boneman> RIMO! RIMO! RIMO!","color":"aqua"}