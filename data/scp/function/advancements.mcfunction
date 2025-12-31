advancement grant @a only scp:scp/root
advancement grant @a only scp:scp/safe
advancement grant @a only scp:scp/euclid
advancement grant @a only scp:scp/keter
advancement grant @a only scp:scp/special

execute as @a if items entity @s container.* *[custom_data={035:1b}] run advancement grant @s only scp:scp/035

execute as @a if items entity @s armor.head *[custom_data={178:1b}] run advancement grant @s only scp:scp/178

execute as @a if items entity @s container.* *[custom_data={117:1b}] run advancement grant @s only scp:scp/117

execute as @a if items entity @s container.* red_mushroom run advancement grant @s only scp:scp/129
execute as @a if items entity @s container.* brown_mushroom run advancement grant @s only scp:scp/129

execute as @a if items entity @s container.* *[custom_data={154:1b}] run advancement grant @s only scp:scp/154

execute as @a if items entity @s container.* filled_map[item_name={"translate":"filled_map.buried_treasure"}] run advancement grant @s only scp:scp/175

execute as @a if items entity @s container.* potion[custom_data={181:1b}] run advancement grant @s only scp:scp/181

execute as @a if items entity @s container.* potion[custom_data={207:1b}] run advancement grant @s only scp:scp/207

execute as @a if items entity @s container.* waxed_copper_chest[custom_data={216:1b}] run advancement grant @s only scp:scp/216


