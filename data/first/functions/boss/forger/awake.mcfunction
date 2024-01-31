execute as @s at @s run particle flame ~ ~ ~ 0 1 0 0.1 100 normal @a
execute as @s at @s run playsound item.totem.use hostile @a ~ ~ ~ 1
execute as @s at @s run tp @p[scores={Ghorn=1}] ~ ~ ~-5
schedule function first:boss/forger/summon 2s replace
execute as @s at @s run scoreboard players set @s SpellCD 10000