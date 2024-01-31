### as corrupting xuluak

execute as @s at @s run effect give @s instant_health 1 10 true
execute as @s at @s run tag @s add chorusian
execute as @s run tellraw @s {"text": "You are a chorusian now!"}
execute as @s at @s run playsound entity.ender_dragon.growl player @a ~ ~ ~ 10 0
execute as @s at @s run particle dust 0.882 0 1 1 ~ ~1 ~ 0 1 0 0 20 force @a
execute as @s at @s run particle flash ~ ~1 ~ 0 1 0 0 20 force @a
execute as @s at @s run tag @s remove xuluak

execute as @s at @s run tag @s remove earthMagik
execute as @s at @s run tag @s remove fireMagik
execute as @s at @s run tag @s remove iceMagik
execute as @s at @s run tag @s remove skulkMagik
execute as @s at @s run tag @s remove waterMagik
execute as @s at @s run tag @s remove witherMagik
