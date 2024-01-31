execute as @s at @s store result score @s random2 run random value 1..5
execute as @s if score @s random2 matches 1 run tag @s add human
execute as @s if score @s random2 matches 2 run tag @s add qualak
execute as @s if score @s random2 matches 3 run tag @s add xuluak
execute as @s if score @s random2 matches 4 run tag @s add lutuk
execute as @s if score @s random2 matches 5 run tag @s add renwik

##execute as @s at @s positioned 0 0 0 run function first:selfc/selrnd
execute as @s at @s positioned 0 0 0 run function first:selfc/selcesport