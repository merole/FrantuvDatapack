execute as @s[tag=renwik] run execute in the_nether run tp -9 77 -13
###execute as @s[tag=renwik] run execute at @s run tp @s ~ ~-40 ~
##execute as @s[tag=renwik] run execute at @s run function first:racefc/renwikspawn
##execute as @s[tag=!renwik] run execute in overworld run spreadplayers ~ ~ 300 300 false @s
execute as @s run execute at @s run spawnpoint @s ~ ~ ~
execute as @s[tag=human] run title @s title {"text": "Human"}
execute as @s[tag=human] run tellraw @s {"text": "You are a human"}
execute as @s[tag=lutuk] run title @s title {"text": "Lutuk"}
execute as @s[tag=lutuk] run tellraw @s {"text": "You are a lutuk"}
execute as @s[tag=xuluak] run title @s title {"text": "Xuluak"}
execute as @s[tag=xuluak] run tellraw @s {"text": "You are a xuluak"}
execute as @s[tag=xuluak] store result score @s random1 run random roll 1..9
execute as @s[tag=xuluak,scores={random1=2},tag=!magik] run function first:enmaging/enmaging
execute as @s[tag=xuluak] run scoreboard players set @s random1 -1
execute as @s[tag=renwik] run title @s title {"text": "Renwik"}
execute as @s[tag=renwik] run tellraw @s {"text": "You are a renwik"}
execute as @s[tag=qualak] run title @s title {"text": "Qualak"}
execute as @s[tag=qualak] run tellraw @s {"text": "You are a qualak"}
execute as @s[tag=qualak] run scoreboard players set @s OutOfWater 0