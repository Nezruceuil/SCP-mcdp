execute if block ^ ^1 ^1 iron_door[facing=north,open=false] run playsound block.iron_door.open
execute if block ^ ^1 ^1 iron_door[facing=north,open=false] run setblock ^ ^1 ^1 iron_door[facing=north,open=true]

execute if block ^ ^1 ^1 iron_door[facing=east,open=false] run playsound block.iron_door.open
execute if block ^ ^1 ^1 iron_door[facing=east,open=false] run setblock ^ ^1 ^1 iron_door[facing=east,open=true]

execute if block ^ ^1 ^1 iron_door[facing=south,open=false] run playsound block.iron_door.open
execute if block ^ ^1 ^1 iron_door[facing=south,open=false] run setblock ^ ^1 ^1 iron_door[facing=south,open=true]

execute if block ^ ^1 ^1 iron_door[facing=west,open=false] run playsound block.iron_door.open
execute if block ^ ^1 ^1 iron_door[facing=west,open=false] run setblock ^ ^1 ^1 iron_door[facing=west,open=true]


execute if block ^ ^ ^0.1 iron_trapdoor[facing=north,open=false] run playsound block.iron_trapdoor.open
execute if block ^ ^ ^0.1 iron_trapdoor[facing=north,open=false] run setblock ^ ^ ^0.1 iron_trapdoor[facing=north,open=true]

execute if block ^ ^ ^0.1 iron_trapdoor[facing=east,open=false] run playsound block.iron_trapdoor.open
execute if block ^ ^ ^0.1 iron_trapdoor[facing=east,open=false] run setblock ^ ^ ^0.1 iron_trapdoor[facing=east,open=true]

execute if block ^ ^ ^0.1 iron_trapdoor[facing=south,open=false] run playsound block.iron_trapdoor.open
execute if block ^ ^ ^0.1 iron_trapdoor[facing=south,open=false] run setblock ^ ^ ^0.1 iron_trapdoor[facing=south,open=true]

execute if block ^ ^ ^0.1 iron_trapdoor[facing=west,open=false] run playsound block.iron_trapdoor.open
execute if block ^ ^ ^0.1 iron_trapdoor[facing=west,open=false] run setblock ^ ^ ^0.1 iron_trapdoor[facing=west,open=true]

advancement grant @s only scp:scp/005