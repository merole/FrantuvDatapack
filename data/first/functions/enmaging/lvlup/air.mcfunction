item replace entity @s weapon.mainhand with air
execute as @s at @s run particle cloud ~ ~1 ~ 0.2 1 0.2 0 10 normal @a
execute as @s at @s run playsound entity.bat.takeoff player @a ~ ~ ~ 1
execute as @s at @s run particle flash ~ ~1 ~ 0 0 0 0 1 normal @a
execute as @s at @s run tag @s add airMagik
execute as @s at @s run scoreboard players add @s Mlvl 1
execute as @s at @s run tellraw @s {"text":"You absorbed Therae!","color":"yellow"}

##tag @s remove airMagik
tag @s remove earthMagik
tag @s remove endMagik
tag @s remove fireMagik
tag @s remove iceMagik
tag @s remove skulkMagik
tag @s remove ustraMagik
tag @s remove waterMagik
tag @s remove witherMagik