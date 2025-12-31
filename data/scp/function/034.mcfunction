execute unless entity @s[tag=034] run effect give @s invisibility 60 255 true
execute unless entity @s[tag=034] unless items entity @s armor.head player_head[custom_data={034.2:1b}] run item replace entity @s player.cursor from entity @s armor.head
execute unless entity @s[tag=034] run item replace entity @s armor.head with player_head[enchantments={"binding_curse":1},custom_data={034.2:1b}]
advancement revoke @s only scp:034
execute unless entity @s[tag=034] run tag @s add 034

advancement grant @s only scp:scp/034