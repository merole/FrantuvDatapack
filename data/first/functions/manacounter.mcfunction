execute if entity @s at @s run scoreboard players add @s manaTimer 1
execute if entity @s[tag=xuluak] if score @s manaTimer matches 300..600 run scoreboard players add @s manaTimer 1
execute if entity @s[tag= magik,predicate=first:spring] at @s run scoreboard players add @s manaTimer 1
execute if entity @s[scores={manaTimer = 1200..}] run scoreboard players add @s mana 1
execute if entity @s[scores={manaTimer = 1200..}] run scoreboard players set @s manaTimer 0
execute if entity @s at @s if score @s mana > @s Maxmana run scoreboard players remove @s mana 1

execute if entity @s[scores={mana = ..-1}] at @s run effect give @s nausea 5 1 true
execute if entity @s[scores={mana = ..-5}] at @s run effect give @s slowness 1 1 true
execute if entity @s[scores={mana = ..-7}] at @s run effect give @s poison 3 2 true
execute if entity @s[scores={mana = ..-10}] at @s run effect give @s blindness 2 1 true
execute if entity @s[scores={mana = ..-15}] at @s run effect give @s wither 2 1 true
execute if entity @s[scores={mana = ..-20}] at @s run damage @s 1 bad_respawn_point
execute if entity @s at @s run function first:mana/mana

execute if entity @s at @s if score @s mana > @s Maxmana run particle flash ~ ~1 ~ 0 0 0 0 1 normal
execute if entity @s at @s if score @s mana > @s Maxmana run playsound block.candle.extinguish player @a ~ ~ ~ 0.2 2
