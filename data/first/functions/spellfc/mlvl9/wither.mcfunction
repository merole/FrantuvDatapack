scoreboard players set @s telatu 0
scoreboard players remove @s mana 8
scoreboard players set @s SpellCD 250

particle flash ~ ~ ~ 0 0 0 1 1 force @a
playsound block.trial_spawner.spawn_mob player @a ~ ~ ~ 1 1
execute as @s at @s run summon wolf ~ ~ ~ {CustomName:'[{"text":"Dark Wisp"}]',Silent:1b,Tags:["SoulDog"],active_effects:[{id:"fire_resistance",duration:-1,amplifier:1,show_particles:0b},{id:"invisibility",duration:-1,amplifier:1,show_particles:0b}],Attributes:[{Name:"generic.max_health",Base:4.0d}]}
execute as @s at @s run summon wolf ~ ~ ~ {CustomName:'[{"text":"Dark Wisp"}]',Silent:1b,Tags:["SoulDog"],active_effects:[{id:"fire_resistance",duration:-1,amplifier:1,show_particles:0b},{id:"invisibility",duration:-1,amplifier:1,show_particles:0b}],Attributes:[{Name:"generic.max_health",Base:4.0d}]}
execute as @s at @s run summon wolf ~ ~ ~ {CustomName:'[{"text":"Dark Wisp"}]',Silent:1b,Tags:["SoulDog"],active_effects:[{id:"fire_resistance",duration:-1,amplifier:1,show_particles:0b},{id:"invisibility",duration:-1,amplifier:1,show_particles:0b}],Attributes:[{Name:"generic.max_health",Base:4.0d}]}
execute as @s at @s run execute as @e[distance=..1,type=wolf,tag=SoulDog] run data modify entity @s Owner set from entity @p[tag=witherMagik] UUID
execute as @s at @s run execute as @e[distance=..1,type=wolf,tag=SoulDog] run data merge entity @s {Health:3.0f}
execute as @s at @s run execute as @e[distance=..1,type=wolf,tag=SoulDog] run scoreboard players set @s SpellCD 400

