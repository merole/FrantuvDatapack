execute as @s at @s run tp @s ~ ~ ~ ~35 ~
execute as @s at @s run particle sculk_charge_pop ^ ^ ^-4 0 0 0 0 1 normal @a
execute as @s at @s run particle sculk_charge_pop ^ ^ ^4 0 0 0 0 1 normal @a
execute as @s at @s run particle sculk_charge_pop ^4 ^ ^ 0 0 0 0 1 normal @a
execute as @s at @s run particle sculk_charge_pop ^-4 ^ ^ 0 0 0 0 1 normal @a

execute as @s at @s run particle sculk_charge_pop ^ ^ ^-3 0 0 0 0 1 normal @a
execute as @s at @s run particle sculk_charge_pop ^ ^ ^3 0 0 0 0 1 normal @a
execute as @s at @s run particle sculk_charge_pop ^3 ^ ^ 0 0 0 0 1 normal @a
execute as @s at @s run particle sculk_charge_pop ^-3 ^ ^ 0 0 0 0 1 normal @a

execute as @s at @s run particle sculk_charge_pop ^ ^ ^-2 0 0 0 0 1 normal @a
execute as @s at @s run particle sculk_charge_pop ^ ^ ^2 0 0 0 0 1 normal @a
execute as @s at @s run particle sculk_charge_pop ^2 ^ ^ 0 0 0 0 1 normal @a
execute as @s at @s run particle sculk_charge_pop ^-2 ^ ^ 0 0 0 0 1 normal @a

execute as @s[scores={SpellCD = 160}] at @s run playsound entity.warden.heartbeat player @a ~ ~ ~ 2 0.6
execute as @s[scores={SpellCD = 120}] at @s run playsound entity.warden.heartbeat player @a ~ ~ ~ 2 0.5
execute as @s[scores={SpellCD = 80}] at @s run playsound entity.warden.heartbeat player @a ~ ~ ~ 2 0.4
execute as @s[scores={SpellCD = 40}] at @s run playsound entity.warden.heartbeat player @a ~ ~ ~ 2 0.3
execute as @s[scores={SpellCD = 1}] at @s run playsound entity.warden.heartbeat player @a ~ ~ ~ 2 0.2
execute as @s[scores={SpellCD = 1}] at @s run particle flash ~ ~ ~ 1 1 1 0 10 normal @a
execute as @s[scores={SpellCD = 1}] at @s run playsound entity.generic.explode player @a ~ ~ ~ 10 1
execute as @s[scores={SpellCD = ..1}] at @s run playsound entity.warden.sonic_boom player @a ~ ~ ~ 10 2
execute as @s[scores={SpellCD = ..1}] at @s run playsound ambient.cave player @a ~ ~ ~ 10 2

execute as @s[scores={SpellCD = 1}] at @s run execute as @e[distance=..10,type=!#first:untargetable,tag=!skulkMagik] at @s run damage @s 10 first:skulk/skulktelatu by @p[tag=skulkMagik]
execute as @s[scores={SpellCD = 1}] at @s run execute as @e[distance=..8,type=!#first:untargetable,tag=!skulkMagik] at @s run damage @s 20 first:skulk/skulktelatu by @p[tag=skulkMagik]
execute as @s[scores={SpellCD = 1}] at @s run execute as @e[distance=..4,type=!#first:untargetable,tag=!skulkMagik] at @s run damage @s 40 first:skulk/skulktelatu by @p[tag=skulkMagik]
execute as @s[scores={SpellCD = 1}] at @s run execute as @e[distance=..1,type=!#first:untargetable,tag=!skulkMagik] at @s run damage @s 100 first:skulk/skulktelatu by @p[tag=skulkMagik]