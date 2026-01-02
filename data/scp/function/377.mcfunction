execute if score @s 377 matches 0 store result score @s 377 run random value 1..20

execute if score @s 377 matches 1 run title @s title {color:yellow,text:"be sunny all day"}
execute if score @s 377 matches 1 run weather clear 24000
execute if score @s 377 matches 2 run title @s title {color:yellow,text:"lightning"}
execute if score @s 377 matches 2 run summon lightning_bolt ^ ^1 ^2
execute if score @s 377 matches 3 run title @s title {color:yellow,text:"creeper"}
execute if score @s 377 matches 3 run summon creeper ^ ^1 ^-1
execute if score @s 377 matches 4 run title @s title {color:yellow,text:"happy cake"}
execute if score @s 377 matches 4 run setblock ~ ~ ~ light_blue_candle_cake[lit=true]
execute if score @s 377 matches 5 run title @s title {color:yellow,text:"oh oh anvil"}
execute if score @s 377 matches 5 run fill ~ ~ ~ ~ ~15 ~ air
execute if score @s 377 matches 5 run setblock ~ ~16 ~ chipped_anvil
execute if score @s 377 matches 6 run title @s title {color:yellow,text:"happy bath"}
execute if score @s 377 matches 6 run fill ~-0.5 ~-1 ~-0.5 ~0.5 ~-1 ~0.5 water
execute if score @s 377 matches 6 run fill ~-0.5 ~ ~-0.5 ~0.5 ~1 ~0.5 air
execute if score @s 377 matches 7 run title @s title {color:yellow,text:"be lucky"}
execute if score @s 377 matches 7 run effect give @s luck 24000
execute if score @s 377 matches 8 run title @s title {color:yellow,text:"in return"}
execute if score @s 377 matches 8 run fill ~ ~ ~ ~ ~2 ~ air
execute if score @s 377 matches 8 run summon item ~ ~2 ~ {Item:{id:enchanted_golden_apple,count:16}}
execute if score @s 377 matches 9 run title @s title {color:yellow,text:"in return"}
execute if score @s 377 matches 9 run fill ~ ~ ~ ~ ~2 ~ air
execute if score @s 377 matches 9 run summon item ~ ~2 ~ {Item:{id:diamond,count:4}}
execute if score @s 377 matches 10 run title @s title {color:yellow,text:"met a chicken"}
execute if score @s 377 matches 10 run summon chicken ~ ~ ~
execute if score @s 377 matches 11 run title @s title {color:yellow,text:"rusty is on service"}
execute if score @s 377 matches 11 run summon wolf ~ ~ ~ {Owner:[I;1,1,1,1],Sitting:1b,variant:"rusty",sound_variant:"cute",CollarColor:1b,CustomName:rusty}
execute if score @s 377 matches 11 run data modify entity @n[type=wolf] Owner set from entity @s UUID
execute if score @s 377 matches 12 run title @s title {color:yellow,text:"ashen is on service"}
execute if score @s 377 matches 12 run summon wolf ~ ~ ~ {Owner:[I;1,1,1,1],Sitting:1b,variant:"ashen",sound_variant:"cute",CollarColor:3b,CustomName:ashen}
execute if score @s 377 matches 12 run data modify entity @n[type=wolf] Owner set from entity @s UUID
execute if score @s 377 matches 13 run title @s title {color:yellow,text:"black is on service"}
execute if score @s 377 matches 13 run summon wolf ~ ~ ~ {Owner:[I;1,1,1,1],Sitting:1b,variant:"black",sound_variant:"cute",CollarColor:7b,CustomName:black}
execute if score @s 377 matches 13 run data modify entity @n[type=wolf] Owner set from entity @s UUID
execute if score @s 377 matches 14 run title @s title {color:yellow,text:"chestnut is on service"}
execute if score @s 377 matches 14 run summon wolf ~ ~ ~ {Owner:[I;1,1,1,1],Sitting:1b,variant:"chestnut",sound_variant:"cute",CollarColor:4b,CustomName:chestnut}
execute if score @s 377 matches 14 run data modify entity @n[type=wolf] Owner set from entity @s UUID
execute if score @s 377 matches 15 run title @s title {color:yellow,text:"pale is on service"}
execute if score @s 377 matches 15 run summon wolf ~ ~ ~ {Owner:[I;1,1,1,1],Sitting:1b,variant:"pale",sound_variant:"cute",CollarColor:0b,CustomName:pale}
execute if score @s 377 matches 15 run data modify entity @n[type=wolf] Owner set from entity @s UUID
execute if score @s 377 matches 16 run title @s title {color:yellow,text:"red is on watch"}
execute if score @s 377 matches 16 run summon parrot ~ ~ ~ {Sitting:1b,Variant:0,CustomName:red}
execute if score @s 377 matches 16 run data modify entity @n[type=parrot] Owner set from entity @s UUID
execute if score @s 377 matches 17 run title @s title {color:yellow,text:"blue is on watch"}
execute if score @s 377 matches 17 run summon parrot ~ ~ ~ {Sitting:1b,Variant:1,CustomName:blue}
execute if score @s 377 matches 17 run data modify entity @n[type=parrot] Owner set from entity @s UUID
execute if score @s 377 matches 18 run title @s title {color:yellow,text:"green is on watch"}
execute if score @s 377 matches 18 run summon parrot ~ ~ ~ {Sitting:1b,Variant:2,CustomName:green}
execute if score @s 377 matches 18 run data modify entity @n[type=parrot] Owner set from entity @s UUID
execute if score @s 377 matches 19 run title @s title {color:yellow,text:"cyan is on watch"}
execute if score @s 377 matches 19 run summon parrot ~ ~ ~ {Sitting:1b,Variant:3,CustomName:cyan}
execute if score @s 377 matches 19 run data modify entity @n[type=parrot] Owner set from entity @s UUID
execute if score @s 377 matches 20 run title @s title {color:yellow,text:"silver is on watch"}
execute if score @s 377 matches 20 run summon parrot ~ ~ ~ {Sitting:1b,Variant:4,CustomName:silver}
execute if score @s 377 matches 20 run data modify entity @n[type=parrot] Owner set from entity @s UUID


playsound block.large_amethyst_bud.break master @s ~ ~ ~ 5
advancement revoke @s only scp:377
scoreboard players set @s 377 -24000