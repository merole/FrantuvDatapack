#### as rusmu magik
scoreboard players set @s rusmu 0
scoreboard players remove @s mana 4
scoreboard players set @s SpellCD 200

execute as @s at @s run playsound block.anvil.land player @a ~ ~ ~ 0.9 1
execute as @s at @s run summon armor_stand ^ ^ ^4 {Invisible:1b,NoGravity:1b,Tags:["wallM","rusmu"]}
execute as @s at @s run execute as @e[tag=rusmu,limit=1,sort=nearest] at @s anchored eyes run tp @s ~ ~ ~ facing entity @e[sort=nearest,tag=magik,limit=1] eyes
execute as @e[tag=rusmu] at @s run scoreboard players set @s SpellCD 190

execute as @e[tag=rusmu] at @s run fill ^ ^ ^ ^ ^2 ^ barrier replace air
execute as @e[tag=rusmu] at @s run fill ^-1 ^ ^ ^-1 ^2 ^ barrier replace air
execute as @e[tag=rusmu] at @s run fill ^1 ^ ^ ^1 ^2 ^ barrier replace air
execute as @e[tag=rusmu] at @s run fill ^2 ^ ^ ^2 ^2 ^ barrier replace air
execute as @e[tag=rusmu] at @s run fill ^-2 ^ ^ ^-2 ^2 ^ barrier replace air