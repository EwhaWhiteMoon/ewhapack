scoreboard objectives add ewha_shot_cooldown dummy {"text":"발사 쿨타임", "color":"blue"}
scoreboard objectives setdisplay sidebar ewha_shot_cooldown

scoreboard objectives add ewha_shot_value dummy
scoreboard players set effectDensity ewha_shot_value 15
scoreboard players set effectDensity2 ewha_shot_value 300
scoreboard players set effectHandler ewha_shot_value 0
scoreboard players set effectHandler2 ewha_shot_value 0

scoreboard objectives add ewha_shot_target dummy