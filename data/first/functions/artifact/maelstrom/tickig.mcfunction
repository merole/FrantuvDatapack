execute as @s at @s unless entity @e[type=area_effect_cloud,tag=maelstrom,distance=..3,y_rotation=-1..-89] run playsound entity.bat.loop neutral @a ~ ~ ~ 1 0
execute as @s at @s unless entity @e[type=area_effect_cloud,tag=maelstrom,distance=..3,y_rotation=-1..-89] run playsound entity.fishing_bobber.splash neutral @a ~ ~ ~ 1 0

execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Tags:["maelstrom"],Radius:0f,Duration:60,Rotation:[0.0f,0.0f]}
execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Tags:["maelstrom"],Radius:0f,Duration:60,Rotation:[60.0f,0.0f]}
execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Tags:["maelstrom"],Radius:0f,Duration:60,Rotation:[120.0f,0.0f]}
execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Tags:["maelstrom"],Radius:0f,Duration:60,Rotation:[180.0f,0.0f]}
execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Tags:["maelstrom"],Radius:0f,Duration:60,Rotation:[270.0f,0.0f]}