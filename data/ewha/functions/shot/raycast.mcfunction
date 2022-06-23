scoreboard players add effectHandler ewha_shot_value 1
scoreboard players add effectHandler2 ewha_shot_value 1
execute if score effectHandler ewha_shot_value = effectDensity ewha_shot_value run particle sculk_charge_pop ~ ~-.2 ~ 0 0 0 0 1 force
execute if score effectHandler2 ewha_shot_value = effectDensity2 ewha_shot_value run particle sonic_boom ~ ~-.2 ~ 0 0 0 0 1 force
execute if score effectHandler ewha_shot_value = effectDensity ewha_shot_value run scoreboard players set effectHandler ewha_shot_value 0
execute if score effectHandler2 ewha_shot_value = effectDensity2 ewha_shot_value run scoreboard players set effectHandler2 ewha_shot_value 0
execute as @e[type = zombie, limit = 1, dx = 1, dy = 2, dz = 1, sort = nearest] run tag @s add ewha_shot_target
execute unless entity @e[type = zombie, distance = ..1] if block ^ ^ ^.1 air positioned ^ ^ ^.1 run function ewha:shot/raycast