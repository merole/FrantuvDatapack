execute as @s at @s run playsound entity.evoker.celebrate hostile @a ~ ~ ~ 1
scoreboard players set @s SpellCD 200
execute as @s at @s run summon creeper ~ ~ ~ {Motion:[0d,2d,0d],Fuse:1,ExplosionRadius:2,Health:2,Tags:["forgewisp"],active_effects:[{id:invisibility,duration:-1,amplifier:0,show_particles:0b},{id:slow_falling,duration:-1,amplifier:0,show_particles:0b}],Attributes:[{Name:"generic.movement_speed",Base:0.7d},{Name:"generic.max_health",Base:2d}]}
