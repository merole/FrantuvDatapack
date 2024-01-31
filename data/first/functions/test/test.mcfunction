execute as @s at @s run summon arrow ^ ^ ^.5 {Tags:["test"],NoGravity:1b}
execute as @s at @s run tp @e[tag=test,limit=1,sort=nearest] ^ ^ ^1

execute as @s at @s store result score @s motionX run data get entity @s Pos[0] 1000000
execute as @s at @s store result score @s motionY run data get entity @s Pos[1] 1000000
execute as @s at @s store result score @s motionZ run data get entity @s Pos[2] 1000000

execute as @e[tag=test,limit=1,sort=nearest] at @s store result score @s motionX run data get entity @s Pos[0] 1000000
execute as @e[tag=test,limit=1,sort=nearest] at @s store result score @s motionY run data get entity @s Pos[1] 1000000
execute as @e[tag=test,limit=1,sort=nearest] at @s store result score @s motionZ run data get entity @s Pos[2] 1000000


execute as @s at @s run scoreboard players operation @e[tag=test,limit=1,sort=nearest] motionX -= @s motionX
execute as @s at @s run scoreboard players operation @e[tag=test,limit=1,sort=nearest] motionY -= @s motionY
execute as @s at @s run scoreboard players operation @e[tag=test,limit=1,sort=nearest] motionZ -= @s motionZ

execute as @e[tag=test,limit=1,sort=nearest] at @s store result entity @s Motion[0] double 0.000001 run scoreboard players get @s motionX
execute as @e[tag=test,limit=1,sort=nearest] at @s store result entity @s Motion[1] double 0.000001 run scoreboard players get @s motionY
execute as @e[tag=test,limit=1,sort=nearest] at @s store result entity @s Motion[2] double 0.000001 run scoreboard players get @s motionZ
kill @s[tag=Shooter]