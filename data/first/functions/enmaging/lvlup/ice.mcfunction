item replace entity @s weapon.mainhand with air
execute as @s at @s run particle snowflake ~ ~1 ~ 0.2 1 0.2 0 20 normal @a
execute as @s at @s run playsound block.glass.break player @a ~ ~ ~ 1
execute as @s at @s run playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 1
execute as @s at @s run particle flash ~ ~1 ~ 0 0 0 0 1 normal @a
execute as @s at @s run tag @s add iceMagik
execute as @s at @s run scoreboard players add @s Mlvl 1
execute as @s at @s run tellraw @s {"text":"You absorbed Lumge!","color":"yellow"}

tag @s remove airMagik
tag @s remove earthMagik
tag @s remove endMagik
tag @s remove fireMagik
##tag @s remove iceMagik
tag @s remove skulkMagik
tag @s remove ustraMagik
tag @s remove waterMagik
tag @s remove witherMagik