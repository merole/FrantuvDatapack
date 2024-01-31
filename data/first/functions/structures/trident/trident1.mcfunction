execute as @s at @s run kill @e[distance=..2,type=armor_stand,tag=tridentHolder]
execute as @s at @s run playsound block.bubble_column.upwards_inside master @a ~ ~ ~ 10 0
execute as @s at @s run playsound entity.elder_guardian.curse master @a ~ ~ ~ 10 0
execute as @s at @s run playsound entity.zombie.converted_to_drowned hostile @a ~ ~ ~ 5 0
particle flash ~ ~ ~ 0 0 0 0 1 force @a
particle dust 0.047 0.878 0.89 1 ~ ~1 ~ 0.05 0.2 0.05 0 40 normal @a
execute as @s at @s positioned ~ ~5 ~ run function first:boss/drowner/summon
effect give @a[distance=..10] nausea 4 0 true
spreadplayers ~ ~ 20 20 false @a[distance=..10]
kill @s


##/execute align xyz run summon minecraft:interaction ~.5 ~ ~.5 {Tags:["ttridfound"],width:0.5f,height:2f}
##/execute align xyz run summon armor_stand ~ ~-0.5 ~ {Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"trident",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},Tags:["tridentHolder"]}