execute as @a[scores = {ewha_checkstick = 1..}] run tag @s add ewha_checkstick
execute as @a[tag = ewha_checkstick] run scoreboard players set @s ewha_checkstick 0

execute as @a[tag = ewha_checkstick] store result score @s ewha_check_ID run data get entity @s SelectedItem.tag.ewha_ID

execute as @a[tag = ewha_checkstick] run tag @s remove ewha_checkstick

function ewha:dash/tick
function ewha:shot/tick