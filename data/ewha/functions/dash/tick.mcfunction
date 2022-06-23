execute as @a[scores = {ewha_check_ID = 1}, tag = !ewha_dash] run tag @s add ewha_dash
execute as @a[scores = {ewha_check_ID = 1}] run scoreboard players set @s ewha_check_ID 0

execute as @a[tag = ewha_dash, scores = {ewha_dash_flytime = 0}] at @s if block ~ ~-0.1 ~ air run function ewha:dash/fall

execute as @a[tag = ewha_dash, scores = {ewha_dash_flytime = 0}] at @s run playsound minecraft:entity.snowball.throw player @s ~ ~ ~ 0.5 1.5
execute as @a[tag = ewha_dash, scores = {ewha_dash_flytime = 0}] run effect give @s levitation 1 5 true
execute as @a[tag = ewha_dash, scores = {ewha_dash_flytime = 0}] run effect give @s speed 5 20 true
execute as @a[tag = ewha_dash, scores = {ewha_dash_flytime = 0}] run xp set @s 13 levels
execute as @a[tag = ewha_dash, scores = {ewha_dash_flytime = 0}] run xp set @s 0

execute as @e[tag = ewha_dash] run scoreboard players add @s ewha_dash_flytime 1
execute as @e[tag = ewha_dash] run xp add @s 1

execute as @a[tag = ewha_dash, scores = {ewha_dash_flytime = 4..}] run effect clear @s levitation
execute as @a[tag = ewha_dash, scores = {ewha_dash_flytime = 10..}] run effect clear @s speed
execute as @a[tag = ewha_dash, scores = {ewha_dash_flytime = 30..}] run tag @s remove ewha_dash
execute as @a[scores = {ewha_dash_flytime = 30..}] run scoreboard players set @s ewha_dash_flytime 0