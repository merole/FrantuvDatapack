execute if entity @s[tag=magik] at @s run function first:base/hud
execute if entity @s[tag=op,tag=!magik] at @s run title @s actionbar [{"text":" \u0020   \u0020   \u0020   \u0020   \u0020   \u0020 \u0020 \u0020 \u0020","color":"#CCCC00"},{"score":{"name":"@s","objective":"mana"},"color":"#CCCC00"},{"text":"/","color":"#CCCC00"},{"score":{"name":"@s","objective":"Maxmana"},"color":"#CCCC00"},{"text":" \u2726","color":"#CCCC00"}]
execute if entity @s[predicate=first:switches_spell,tag=magik] at @s run scoreboard players add @s counter1 1 
execute at @s run scoreboard players add @s OutOfWater 1
execute if entity @s[scores={OutOfWater=-1200..},predicate=first:in_water] at @s run scoreboard players remove @s OutOfWater 10
execute if score @s waterD matches 1.. run scoreboard players remove @s OutOfWater 1200
execute if score @s waterD matches 1.. run tellraw @s[tag=qualak] {"text": "You feel refreshed!","color":"#00ccff"}
execute if score @s waterD matches 1.. run scoreboard players remove @s waterD 1
execute if entity @s[scores={OutOfWater=-1200..}] at @s if predicate first:rain if predicate first:check_sky run scoreboard players remove @s OutOfWater 10
execute if entity @s[scores={Death=1..}] at @s run function first:base/death
