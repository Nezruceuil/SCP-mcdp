execute as @e[tag=scp005,tag=!destroy] at @s unless block ~ ~1 ~ sculk_catalyst[bloom=true] run tag @s add destroy
execute as @e[tag=scp005,tag=!destroy] at @s run setblock ~ ~2 ~ light[level=10]
execute as @e[tag=scp005,tag=!destroy] at @s run item replace entity @s armor.head with dried_kelp[custom_data={005:1b},max_stack_size=1,item_name="scp 005",rarity="epic",consumable={consume_seconds:1000000000},item_model=ominous_trial_key] 1

execute as @e[tag=scp005,tag=destroy] at @s run setblock ~ ~2 ~ air
execute as @e[tag=scp005,tag=destroy] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:dried_kelp",count:1,components:{"minecraft:custom_data":{005:1b},"item_model":ominous_trial_key,"minecraft:max_stack_size":1,"minecraft:item_name":"scp 005","minecraft:rarity":"epic","minecraft:consumable":{consume_seconds:1000000000}}}}
execute as @e[tag=scp005,tag=destroy] at @s run kill @s

