xp add @s -2 levels
summon zombie ~ ~-1 ~ {active_effects:[{id:"invisibility",duration:1000}],Silent:1b,Tags: ["sacrifice"],IsBaby:1b,DeathLootTable:"minecraft:entities/villager"} 
damage @e[limit=1,tag=sacrifice] 516568152165 player_attack by @p[tag=skulkin]
playsound block.sculk_shrieker.shriek player @s ~ ~ ~ 0.1 0