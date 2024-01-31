execute as @s at @s run scoreboard players set @s SpellCD 200
execute as @s at @s run particle effect ~ ~1 ~ 0.9 0.9 0.9 0 20 normal @a
execute as @s at @s run playsound entity.wandering_trader.disappeared hostile @a ~ ~ ~ 2
execute as @s at @s at @p if block ^ ^1 ^-1.5 air run tp @s ^ ^ ^-1.5

execute as @s at @s run effect give @p slowness 4 5 true
execute as @s at @p run particle squid_ink ~ ~1 ~ 0.2 0.2 0.2 0 20 normal @a