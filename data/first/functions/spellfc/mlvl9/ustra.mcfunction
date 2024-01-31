scoreboard players set @s telatu 0
scoreboard players remove @s mana 10
scoreboard players set @s SpellCD 70

execute as @s at @s run effect give @s resistance 20 4 true
execute as @s at @s run effect give @s slowness 3 10 true
execute as @s at @s run playsound block.anvil.land player @a ~ ~ ~ 1 1
execute as @s at @s run playsound block.beacon.activate player @a ~ ~ ~ 1 1
execute as @s at @s run effect give @s glowing 20 1 true
execute as @s at @s run particle flash ~ ~1 ~ 0 0 0 0 1 normal @a

execute as @s at @s run summon area_effect_cloud ~ ~4 ~ {Rotation:[0.0f,0.0f],Tags:["UstraTelatu"],Duration:60,Radius:0}
execute as @s at @s run summon area_effect_cloud ~ ~4 ~ {Rotation:[20.0f,0.0f],Tags:["UstraTelatu"],Duration:60,Radius:0}
execute as @s at @s run summon area_effect_cloud ~ ~4 ~ {Rotation:[40.0f,0.0f],Tags:["UstraTelatu"],Duration:60,Radius:0}
execute as @s at @s run summon area_effect_cloud ~ ~4 ~ {Rotation:[60.0f,0.0f],Tags:["UstraTelatu"],Duration:60,Radius:0}
execute as @s at @s run summon area_effect_cloud ~ ~4 ~ {Rotation:[80.0f,0.0f],Tags:["UstraTelatu"],Duration:60,Radius:0}
execute as @s at @s run summon area_effect_cloud ~ ~4 ~ {Rotation:[100.0f,0.0f],Tags:["UstraTelatu"],Duration:60,Radius:0}
execute as @s at @s run summon area_effect_cloud ~ ~4 ~ {Rotation:[120.0f,0.0f],Tags:["UstraTelatu"],Duration:60,Radius:0}
execute as @s at @s run summon area_effect_cloud ~ ~4 ~ {Rotation:[140.0f,0.0f],Tags:["UstraTelatu"],Duration:60,Radius:0}
execute as @s at @s run summon area_effect_cloud ~ ~4 ~ {Rotation:[160.0f,0.0f],Tags:["UstraTelatu"],Duration:60,Radius:0}
execute as @s at @s run summon area_effect_cloud ~ ~4 ~ {Rotation:[180.0f,0.0f],Tags:["UstraTelatu"],Duration:60,Radius:0}

execute as @s at @s run summon area_effect_cloud ~ ~4 ~ {Rotation:[-20.0f,0.0f],Tags:["UstraTelatu"],Duration:60,Radius:0}
execute as @s at @s run summon area_effect_cloud ~ ~4 ~ {Rotation:[-40.0f,0.0f],Tags:["UstraTelatu"],Duration:60,Radius:0}
execute as @s at @s run summon area_effect_cloud ~ ~4 ~ {Rotation:[-60.0f,0.0f],Tags:["UstraTelatu"],Duration:60,Radius:0}
execute as @s at @s run summon area_effect_cloud ~ ~4 ~ {Rotation:[-80.0f,0.0f],Tags:["UstraTelatu"],Duration:60,Radius:0}
execute as @s at @s run summon area_effect_cloud ~ ~4 ~ {Rotation:[-100.0f,0.0f],Tags:["UstraTelatu"],Duration:60,Radius:0}
execute as @s at @s run summon area_effect_cloud ~ ~4 ~ {Rotation:[-120.0f,0.0f],Tags:["UstraTelatu"],Duration:60,Radius:0}
execute as @s at @s run summon area_effect_cloud ~ ~4 ~ {Rotation:[-140.0f,0.0f],Tags:["UstraTelatu"],Duration:60,Radius:0}
execute as @s at @s run summon area_effect_cloud ~ ~4 ~ {Rotation:[-160.0f,0.0f],Tags:["UstraTelatu"],Duration:60,Radius:0}
