execute as @s at @s run tp @s ~ ~ ~ ~20 ~
execute as @s at @s run particle bubble ^ ^ ^-1.2 0 0 0 0 1 normal @a
execute as @s at @s run particle bubble ^ ^ ^1.2 0 0 0 0 1 normal @a
execute as @s at @s run tp @e[distance=..5,limit=1,type=drowned,tag=drowner] ~ ~-1 ~
execute as @s[scores={SpellCD = 100}] at @s run playsound entity.generic.splash player @a ~ ~ ~ 1 0.6
execute as @s[scores={SpellCD = 80}] at @s run playsound entity.generic.splash player @a ~ ~ ~ 1 0.5
execute as @s[scores={SpellCD = 60}] at @s run playsound entity.generic.splash player @a ~ ~ ~ 1 0.4
execute as @s[scores={SpellCD = 40}] at @s run playsound entity.generic.splash player @a ~ ~ ~ 1 0.3
execute as @s[scores={SpellCD = 1}] at @s run playsound entity.generic.splash player @a ~ ~ ~ 1 0.2

execute as @e[distance=..5,type=!drowned,type=!#undead,type=!#can_breathe_under_water,type=!#first:untargetable] run damage @s 2 drown by @e[distance=..5,type=drowned,tag=drowner,limit=1]
execute as @e[distance=..5,type=!drowned,type=!#undead,type=!#can_breathe_under_water,type=!#first:untargetable,type=!#first:projectiles] at @s run particle nautilus ~ ~1 ~ 0.2 0.2 0.2 1 1 normal @a