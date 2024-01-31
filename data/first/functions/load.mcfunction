##################
##### Message ####
##################
tellraw @a[gamemode=creative] ["",{"text":"--------------------------\n"},{"text":"Welcome to the world of Silta","color":"#46DB46"},{"text":"\n"},{"text":"datapack made by FrantisekV8","color":"gray"},{"text":"\n--------------------------\n"},{"text":"version: reltest-1\nminecraft: 1.20.4","color":"aqua"},{"text":"\n--------------------------\n"},{"text":"about: link here lmao","color":"yellow"},{"text":"\n"},{"text":"discord: jestli bude server...","color":"#6E31D8"},{"text":"\nzatim hotovo"}]

execute as @a[gamemode=creative] at @s run playsound entity.wither.spawn master @a ~ ~ ~ 1 1 1

########################
#### Scoreboard add ####
########################
scoreboard objectives add mana dummy {"text": "Ustra"}
scoreboard objectives add Maxmana dummy {"text": "UstraMax"}
scoreboard objectives add random1 dummy
scoreboard objectives add random2 dummy
scoreboard objectives add random3 dummy
scoreboard objectives add manaTimer dummy
scoreboard objectives add ect trigger {"text":"Ect"}
scoreboard objectives add liosa_nether trigger {"text":"Liosa Nether"}
scoreboard objectives add liosa_world trigger {"text":"Liosa World"}
scoreboard objectives add liosa_end trigger {"text":"Liosa End"}
scoreboard objectives add SpellCD dummy
scoreboard players set @e[tag=magik] SpellCD 0
scoreboard objectives add CastN dummy
scoreboard objectives add nasa trigger
scoreboard objectives add rusmu trigger
scoreboard objectives add tesden trigger
scoreboard objectives add WUse used:warped_fungus_on_a_stick {"text":"Used Wand"}
scoreboard objectives add SPick dummy
scoreboard objectives add Mlvl dummy
scoreboard objectives add counter1 dummy
scoreboard objectives add MaxmanaADD dummy
scoreboard objectives add Basemana dummy
scoreboard objectives add geresu trigger
scoreboard objectives add OutOfWater dummy
scoreboard objectives add waterD used:potion
scoreboard objectives add Health dummy
scoreboard objectives add ptoca trigger
scoreboard objectives add rumdu trigger
scoreboard objectives add HealthPerc dummy
scoreboard objectives add HealthMax dummy
scoreboard objectives add motionX dummy
scoreboard objectives add motionY dummy
scoreboard objectives add motionZ dummy
scoreboard objectives add motionXInv dummy
scoreboard objectives add motionYInv dummy
scoreboard objectives add motionZInv dummy
scoreboard objectives add Death deathCount
scoreboard objectives add eraspha trigger
scoreboard objectives add Ghorn used:goat_horn
scoreboard objectives add telatu trigger
scoreboard objectives add truodes trigger
scoreboard objectives add hunger food
scoreboard objectives add DriedKelpEaten used:dried_kelp
scoreboard objectives add SculkCount dummy
scoreboard objectives add cerglanArmor dummy
scoreboard objectives add playerCount dummy

##############
## Bossbary ##
##############
bossbar add dbm {"text":"Dark Boneman","color":"red"}
bossbar set dbm color red
bossbar set dbm max 90
bossbar set dbm visible false

bossbar add dnj {"text":"Dead Ninja","color":"green"}
bossbar set dnj color green
bossbar set dnj max 200
bossbar set dnj visible false

bossbar add frg {"text":"Forger","color":"yellow"}
bossbar set frg color yellow
bossbar set frg max 300
bossbar set frg visible false

bossbar add drw {"text":"Triton","color":"aqua"}
bossbar set drw color blue
bossbar set drw max 200
bossbar set drw visible false