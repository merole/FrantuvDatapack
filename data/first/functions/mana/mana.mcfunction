#### every tick everyone
execute as @s[nbt={Inventory:[{Slot:100b,tag:{Trim:{material:"minecraft:lapis"}}}]}] at @s run scoreboard players add @s MaxmanaADD 4
execute as @s[nbt={Inventory:[{Slot:101b,tag:{Trim:{material:"minecraft:lapis"}}}]}] at @s run scoreboard players add @s MaxmanaADD 4
execute as @s[nbt={Inventory:[{Slot:102b,tag:{Trim:{material:"minecraft:lapis"}}}]}] at @s run scoreboard players add @s MaxmanaADD 4
execute as @s[nbt={Inventory:[{Slot:103b,tag:{Trim:{material:"minecraft:lapis"}}}]}] at @s run scoreboard players add @s MaxmanaADD 4
execute as @s[nbt={Inventory:[{Slot:100b,tag:{Trim:{material:"minecraft:quartz"}}}]}] at @s run scoreboard players add @s MaxmanaADD 3
execute as @s[nbt={Inventory:[{Slot:101b,tag:{Trim:{material:"minecraft:quartz"}}}]}] at @s run scoreboard players add @s MaxmanaADD 3
execute as @s[nbt={Inventory:[{Slot:102b,tag:{Trim:{material:"minecraft:quartz"}}}]}] at @s run scoreboard players add @s MaxmanaADD 3
execute as @s[nbt={Inventory:[{Slot:103b,tag:{Trim:{material:"minecraft:quartz"}}}]}] at @s run scoreboard players add @s MaxmanaADD 3
execute as @s[nbt={Inventory:[{Slot:100b,tag:{Trim:{material:"minecraft:emerald"}}}]}] at @s run scoreboard players add @s MaxmanaADD 3
execute as @s[nbt={Inventory:[{Slot:101b,tag:{Trim:{material:"minecraft:emerald"}}}]}] at @s run scoreboard players add @s MaxmanaADD 3
execute as @s[nbt={Inventory:[{Slot:102b,tag:{Trim:{material:"minecraft:emerald"}}}]}] at @s run scoreboard players add @s MaxmanaADD 3
execute as @s[nbt={Inventory:[{Slot:103b,tag:{Trim:{material:"minecraft:emerald"}}}]}] at @s run scoreboard players add @s MaxmanaADD 3
execute as @s[nbt={Inventory:[{Slot:100b,tag:{Trim:{material:"minecraft:diamond"}}}]}] at @s run scoreboard players add @s MaxmanaADD 2
execute as @s[nbt={Inventory:[{Slot:101b,tag:{Trim:{material:"minecraft:diamond"}}}]}] at @s run scoreboard players add @s MaxmanaADD 2
execute as @s[nbt={Inventory:[{Slot:102b,tag:{Trim:{material:"minecraft:diamond"}}}]}] at @s run scoreboard players add @s MaxmanaADD 2
execute as @s[nbt={Inventory:[{Slot:103b,tag:{Trim:{material:"minecraft:diamond"}}}]}] at @s run scoreboard players add @s MaxmanaADD 2

execute as @s at @s run scoreboard players operation @s MaxmanaADD += @s Mlvl

execute as @s[nbt={Inventory:[{Slot:-106b,tag:{MagicGem:1}}]}] at @s run scoreboard players add @s MaxmanaADD 1
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{MagicGem:2}}]}] at @s run scoreboard players add @s MaxmanaADD 2
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{MagicGem:3}}]}] at @s run scoreboard players add @s MaxmanaADD 3
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{MagicGem:4}}]}] at @s run scoreboard players add @s MaxmanaADD 4
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{MagicGem:5}}]}] at @s run scoreboard players add @s MaxmanaADD 5


execute as @s at @s store result score @s Maxmana run scoreboard players operation @s Basemana += @s MaxmanaADD
scoreboard players set @s MaxmanaADD 0