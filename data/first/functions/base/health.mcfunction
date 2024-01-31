execute as @s at @s store result score @s Health run data get entity @s Health 1000
execute as @s at @s store result score @s HealthMax run attribute @s generic.max_health base get 10
execute as @s at @s run scoreboard players operation @s HealthPerc = @s Health
execute as @s at @s run scoreboard players operation @s HealthPerc /= @s HealthMax