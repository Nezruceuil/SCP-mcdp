scoreboard players set @s blahaj 10
execute if items entity @s weapon.mainhand *[minecraft:custom_data={blahaj:1b}] run item replace entity @s weapon.mainhand with recovery_compass[item_model="scp:blahaj2",item_name="Blahaj",custom_data={blahaj2:1b},rarity=common]
execute if items entity @s weapon.offhand *[minecraft:custom_data={blahaj:1b}] run item replace entity @s weapon.offhand with recovery_compass[item_model="scp:blahaj2",item_name="Blahaj",custom_data={blahaj2:1b},rarity=common]

playsound minecraft:block.cobweb.break player @a ~ ~ ~
playsound minecraft:block.moss.break player @a ~ ~ ~
advancement revoke @s only scp:blahaj