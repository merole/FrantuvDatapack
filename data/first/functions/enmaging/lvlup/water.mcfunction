item replace entity @s weapon.mainhand with air
execute as @s at @s run particle falling_water ~ ~1 ~ 0.2 1 0.2 0 30 normal @a
execute as @s at @s run playsound entity.generic.splash player @a ~ ~ ~ 1
execute as @s at @s run particle flash ~ ~1 ~ 0 0 0 0 1 normal @a
execute as @s at @s run tag @s add waterMagik
execute as @s at @s run scoreboard players add @s Mlvl 1
execute as @s at @s run tellraw @s {"text":"You absorbed Daun!","color":"yellow"}

tag @s remove airMagik
tag @s remove earthMagik
tag @s remove endMagik
tag @s remove fireMagik
tag @s remove iceMagik
tag @s remove skulkMagik
tag @s remove ustraMagik
##tag @s remove waterMagik
tag @s remove witherMagik