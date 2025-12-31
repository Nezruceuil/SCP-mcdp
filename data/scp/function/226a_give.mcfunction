execute if items entity @s weapon.mainhand *[custom_data={226:1b}] unless items entity @s weapon.offhand * run tag @s add 226

execute as @s[tag=226] run item replace entity @s weapon.offhand from entity @s weapon.mainhand
execute as @s[tag=226] run item replace entity @s weapon.mainhand with air
give @s[tag=226] recovery_compass[item_model="scp:226a",item_name="scp 226a",rarity="epic",custom_data={226a:1b},max_stack_size=4] 1

execute as @s[tag=226] run tag @s remove 226

advancement revoke @s only scp:226