execute as @s at @s run tp ^ ^ ^.2
execute as @s at @s if block ~ ~-1 ~ #first:liquids run tp @s ~ ~-1 ~
execute as @s at @s if block ~ ~-1 ~ #first:liquids run tp @s ~ ~-1 ~
execute as @s at @s if block ~ ~-1 ~ #first:liquids run tp @s ~ ~-1 ~
execute as @s at @s if block ~ ~-1 ~ #first:liquids run kill @s
execute as @s at @s unless block ~ ~ ~ #first:liquids run tp @s ~ ~1 ~
execute as @s at @s unless block ~ ~ ~ #first:liquids run tp @s ~ ~1 ~
execute as @s at @s unless block ~ ~ ~ #first:liquids run tp @s ~ ~1 ~
execute as @s at @s unless block ~ ~ ~ #first:liquids run playsound block.decorated_pot.break block @a ~ ~ ~ 1 1
execute as @s at @s unless block ~ ~ ~ #first:liquids run kill @s

execute as @s at @s if block ~ ~-1 ~ cracked_deepslate_bricks run particle gust_dust ~ ~-1 ~ 0.125 0.125 0.125 0 20 force @a 
execute as @s at @s if block ~ ~-1 ~ cracked_deepslate_tiles run particle gust_dust ~ ~-1 ~ 0.125 0.125 0.125 0 20 force @a 
execute as @s at @s if block ~ ~-1 ~ cracked_nether_bricks run particle gust_dust ~ ~-1 ~ 0.125 0.125 0.125 0 20 force @a 
execute as @s at @s if block ~ ~-1 ~ cracked_polished_blackstone_bricks run particle gust_dust ~ ~-1 ~ 0.125 0.125 0.125 0 20 force @a 
execute as @s at @s if block ~ ~-1 ~ cracked_stone_bricks run particle gust_dust ~ ~-1 ~ 0.125 0.125 0.125 0 20 force @a 
execute as @s at @s if block ~ ~-1 ~ infested_cracked_stone_bricks run particle gust_dust ~ ~-1 ~ 0.125 0.125 0.125 0 20 force @a 
execute as @s at @s if block ~ ~-1 ~ #first:fragile run particle gust_dust ~ ~-1 ~ 0.125 0.125 0.125 0 20 force @a 


execute as @s at @s if block ~ ~-1 ~ cracked_deepslate_bricks run playsound block.glass.break block @a ~ ~ ~ 1 1
execute as @s at @s if block ~ ~-1 ~ cracked_deepslate_tiles run playsound block.glass.break block @a ~ ~ ~ 1 1
execute as @s at @s if block ~ ~-1 ~ cracked_nether_bricks run playsound block.glass.break block @a ~ ~ ~ 1 1
execute as @s at @s if block ~ ~-1 ~ cracked_polished_blackstone_bricks run playsound block.glass.break block @a ~ ~ ~ 1 1
execute as @s at @s if block ~ ~-1 ~ cracked_stone_bricks run playsound block.glass.break block @a ~ ~ ~ 1 1
execute as @s at @s if block ~ ~-1 ~ infested_cracked_stone_bricks run playsound block.glass.break block @a ~ ~ ~ 1 1
execute as @s at @s if block ~ ~-1 ~ #first:fragile run playsound block.glass.break block @a ~ ~ ~ 1 1

execute as @s at @s if block ~ ~-1 ~ cracked_deepslate_bricks run setblock ~ ~-1 ~ air destroy
execute as @s at @s if block ~ ~-1 ~ cracked_deepslate_tiles run setblock ~ ~-1 ~ air destroy
execute as @s at @s if block ~ ~-1 ~ cracked_nether_bricks run setblock ~ ~-1 ~ air destroy
execute as @s at @s if block ~ ~-1 ~ cracked_polished_blackstone_bricks run setblock ~ ~-1 ~ air destroy
execute as @s at @s if block ~ ~-1 ~ cracked_stone_bricks run setblock ~ ~-1 ~ air destroy
execute as @s at @s if block ~ ~-1 ~ infested_cracked_stone_bricks run setblock ~ ~-1 ~ air destroy
execute as @s at @s if block ~ ~-1 ~ #first:fragile run setblock ~ ~-1 ~ air destroy

execute as @s at @s run effect give @e[distance=..2,tag=!earthMagik,type=!#first:untargetable] slowness 5 1
execute as @e[distance=..2,tag=!earthMagik,type=!#first:untargetable] at @s run damage @s 8 first:earth/earthtruodes by @p[tag=earthMagik]

execute as @s at @s run particle block cobbled_deepslate ~ ~-.4 ~ 0 0 0 0 5 normal @a
execute as @s at @s run playsound block.deepslate.break block @a ~ ~ ~ 1 0
