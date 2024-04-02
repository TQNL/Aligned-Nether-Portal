tag @s add anp_in_nether_portal

execute store result score @s nether_portal_pos_per_8_X run data get entity @s Pos[0]
scoreboard players operation @s nether_portal_pos_per_8_X /= #8 nether_portal_math
execute store result storage anp:nether_portal_pos X int 1 run scoreboard players get @s nether_portal_pos_per_8_X

execute store result score @s nether_portal_pos_per_8_Z run data get entity @s Pos[2]
scoreboard players operation @s nether_portal_pos_per_8_Z /= #8 nether_portal_math
execute store result storage anp:nether_portal_pos Z int 1 run scoreboard players get @s nether_portal_pos_per_8_Z

execute store result score @s nether_portal_pos_Y run data get entity @s Pos[1]
execute if score @s nether_portal_pos_Y matches ..4 run scoreboard players set @s nether_portal_pos_Y 5
execute store result storage anp:nether_portal_pos Y int 1 run scoreboard players get @s nether_portal_pos_Y

execute store result score @s nether_portal_clone_pos_X run scoreboard players get @s nether_portal_pos_per_8_X
scoreboard players remove @s nether_portal_clone_pos_X 2
execute store result storage anp:nether_portal_pos clone_X int 1 run scoreboard players get @s nether_portal_clone_pos_X

execute store result score @s nether_portal_clone_pos_Y run scoreboard players get @s nether_portal_pos_Y
scoreboard players remove @s nether_portal_clone_pos_Y 1
execute store result storage anp:nether_portal_pos clone_Y int 1 run scoreboard players get @s nether_portal_clone_pos_Y

execute store result score @s nether_portal_clone_pos_Z run scoreboard players get @s nether_portal_pos_per_8_Z
scoreboard players remove @s nether_portal_clone_pos_Z 2
execute store result storage anp:nether_portal_pos clone_Z int 1 run scoreboard players get @s nether_portal_clone_pos_Z

function anp:to_nether/2 with storage anp:nether_portal_pos
function anp:to_nether/clean