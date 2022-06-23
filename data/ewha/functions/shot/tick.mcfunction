execute as @a[scores = {ewha_check_ID = 2}, tag = !ewha_shot] run tag @s add ewha_shot
execute as @a[scores = {ewha_check_ID = 2}] run scoreboard players set @s ewha_check_ID 0

execute as @a[tag = ewha_shot, scores = {ewha_shot_cooldown = 0}] at @s run playsound minecraft:entity.skeleton.shoot player @s ~ ~ ~ 1 2
execute as @a[tag = ewha_shot, scores = {ewha_shot_cooldown = 0}] at @s anchored eyes run function ewha:shot/raycast

execute as @e[tag = ewha_shot] run scoreboard players add @s ewha_shot_cooldown 1

execute as @a[tag = ewha_shot, scores = {ewha_shot_cooldown = 30..}] run tag @s remove ewha_shot
execute as @a[scores = {ewha_shot_cooldown = 30..}] run scoreboard players set @s ewha_shot_cooldown 0


execute as @e[tag = ewha_shot_target] run scoreboard players add @s ewha_shot_target 1
execute as @e[tag = ewha_shot_target, scores = {ewha_shot_target = 1}] run effect give @s levitation 1 1 true
execute as @e[tag = ewha_shot_target, scores = {ewha_shot_target = 4}] run effect clear @s levitation
execute as @e[tag = ewha_shot_target, scores = {ewha_shot_target = 10}] run effect give @s instant_health 1 1 true
execute as @e[tag = ewha_shot_target, scores = {ewha_shot_target = 10..}] run tag @s remove ewha_shot_target
execute as @e[scores = {ewha_shot_target = 10..}] run scoreboard players set @s ewha_shot_target 0