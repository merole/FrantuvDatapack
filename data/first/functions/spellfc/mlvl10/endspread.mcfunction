execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Radius:0,Duration:15,Tags:["truodesEndSpread"],Rotation:[0f,0f]}
execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Radius:0,Duration:15,Tags:["truodesEndSpread"],Rotation:[60f,0f]}
execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Radius:0,Duration:15,Tags:["truodesEndSpread"],Rotation:[120f,0f]}
execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Radius:0,Duration:15,Tags:["truodesEndSpread"],Rotation:[180f,0f]}
execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Radius:0,Duration:15,Tags:["truodesEndSpread"],Rotation:[-120f,0f]}
execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Radius:0,Duration:15,Tags:["truodesEndSpread"],Rotation:[-60f,0f]}

damage @s 30 first:end/endtruodes by @p[tag=endMagik]
