# replaced tag with gotten advancement
summon marker ~ ~ ~ {Tags:["anp_position"]}

execute store result score @s nether_portal_pos_per_nether_X run data get entity @n[type=marker,tag=anp_position] Pos[0]
scoreboard players operation @s nether_portal_pos_per_nether_X /= #8 nether_portal_math
execute store result storage anp:nether_portal_pos X int 1 run scoreboard players get @s nether_portal_pos_per_nether_X

execute store result score @s nether_portal_pos_per_nether_Z run data get entity @n[type=marker,tag=anp_position] Pos[2]
scoreboard players operation @s nether_portal_pos_per_nether_Z /= #8 nether_portal_math
execute store result storage anp:nether_portal_pos Z int 1 run scoreboard players get @s nether_portal_pos_per_nether_Z

execute store result score @s nether_portal_pos_per_nether_Y run data get entity @n[type=marker,tag=anp_position] Pos[1]
execute if score @s nether_portal_pos_per_nether_Y matches ..5 run scoreboard players set @s nether_portal_pos_per_nether_Y 6
execute store result storage anp:nether_portal_pos Y int 1 run scoreboard players get @s nether_portal_pos_per_nether_Y

execute store result storage anp:nether_portal_pos overworld_X int 1 run data get entity @n[type=marker,tag=anp_position] Pos[0]
execute store result storage anp:nether_portal_pos overworld_Y int 1 run data get entity @n[type=marker,tag=anp_position] Pos[1]
execute store result storage anp:nether_portal_pos overworld_Z int 1 run data get entity @n[type=marker,tag=anp_position] Pos[2]

kill @n[type=marker,tag=anp_position]
function anp:to_nether2/2 with storage anp:nether_portal_pos
function anp:to_nether2/clean
